
import base64
import bottle
import random

from bottle import run, template, error, route, request, abort, static_file
from pymongo import Connection

connection = Connection('localhost', 27017)
db = connection.mydatabase

# generare 6 buoni propositi di categorie diverse
@route('/api/random-generate/', method='GET')
def random_generate():
    categories = [
        'Amore', 'Soldi', 'Amici', 'Sport', 'Salute', 'Motto'
    ]
    response_dict = {
        "objects" : [],
        "slug" : []
    }
    slug = ""
    for category in categories:
        entities = db['documents'].find({'Categoria':category})
        count = db['documents'].find({'Categoria':category}).count()
        print(count)
        print(category)
        n_random = random.randint(1,count)
        i = 0
        for entity in entities:
            entity_random = entity
            i = i + 1
            if i == n_random:
                break
        slug = slug + "_" + str(entity_random["_id"])
        response_dict["objects"].append({
            "Categoria" : entity_random["Categoria"],
            "Testo" : entity_random["Testo"],
        })
    response_dict["slug"] = base64.standard_b64encode(slug[1:].encode()).decode('UTF-8')
    return response_dict


@route('/')
def index():
    cta = [
        'Escimi i buoni propositi', 'Generali adesso!',
        'Iniziamo!', 'Vai!'
    ]
    n_random = random.randint(0, 3)
    cta_random = cta[n_random]
    return template(
        'views/index.tpl',
        title="Homepage",
        cta_random = cta_random,
    )

@route('/favicon.ico')
def favicon():
    print("aaa")
    
@route('/<slug>')
def page(slug):
    decoded_slug = base64.standard_b64decode(slug).decode()
    ids_to_search = []
    resolutions = {}

    resolutions_from_db = db['documents'].find({"_id" :{
        "$in" : decoded_slug.split('_')
    }});

    for resolution in resolutions_from_db:
        resolutions[resolution["Categoria"]] = resolution["Testo"]

    currentUrl = format(request.url)
    shareTitle = "Buonipropositi 2020"
    return template(
        'views/buonipropositi.tpl',
        title = 'Buoni Propositi Randomize',
        resolutions = resolutions,
        currentUrl = currentUrl,
        shareTitle = shareTitle
    )


@error(404)
def error404(error):
    return template('views/404.tpl')


@route('/images/<filename:re:.*\.png>')
def send_image(filename):
    return static_file(filename, root='images', mimetype='image/png')


@route('/static/<filename:path>')
def send_static(filename):
    return static_file(filename, root='assets')


run(host='0.0.0.0', port=8080, reloader=True, debug=True)
