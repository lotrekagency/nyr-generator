
import base64
import bottle
import os
import random
import time

from bottle import run, template, error, route, request, abort, static_file
from pymongo import Connection, errors
from pymongo.errors import ConnectionFailure


while True:
    try:
        connection = Connection(
            os.environ.get('MONGODB_HOST', 'localhost'),
            os.environ.get('MONGODB_PORT', 27017),
        )
        db = connection.mydatabase
        break
    except ConnectionFailure:
        time.sleep(5)

ENVIRONMENT = os.environ.get('ENVIRONMENT', 'DEVELOPMENT')

print (ENVIRONMENT)
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


@route('/<slug>')
def page(slug):
    try:
        decoded_slug = base64.standard_b64decode(slug).decode()
        ids_to_search = []
        resolutions = {}
        resolutions_from_db = db['documents'].find({"_id" :{
            "$in" : decoded_slug.split('_')
        }});
    except Exception as ex:
        return template('views/404.tpl')

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


if ENVIRONMENT == "DEVELOPMENT":

    @route('/images/<filename:re:.*\.png>')
    def send_image(filename):
        return static_file(filename, root='images', mimetype='image/png')

    @route('/static/<filename:path>')
    def send_static(filename):
        return static_file(filename, root='assets')

    @route('/static/favicon.ico')
    def favicon():
        print("aaa")
        return send_static("/favicon.ico")

    print ("Running in DEBUG mode with dev server....")
    run(
        host='0.0.0.0',
        port=8080,
        reloader=True,
        debug=True
    )
else:
    print ("Running with gunicorn server....")
    run(
        host='0.0.0.0',
        port=8080,
        server='gunicorn',
        workers=4,
        reloader=False,
        debug=False
    )
