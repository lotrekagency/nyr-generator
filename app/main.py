
import bottle
from bottle import run, template, error, route, request, abort, static_file
from pymongo import Connection
import random

connection = Connection('localhost', 27017)
db = connection.mydatabase
categories = ['Amore', 'Soldi', 'Amici', 'Sport', 'Lavoro', 'Motto']

# generare 6 buoni propositi di categorie diverse
@route('/api/random-generate/', method='GET')
def random_generate():
    response_dict = {
            "objects" : [

            ],
            "slug" : [

            ]
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
        slug = slug + "-" + str(entity_random["_id"])
        response_dict["objects"].append({
            "Categoria" : entity_random["Categoria"],
            "Testo" : entity_random["Testo"],
        })
    response_dict["slug"].append({
            "slug" : slug[1:],
    })
    return response_dict

@route('/')
def index():
    return template('app/views/index.tpl', title="Homepage", url_people="/images/group_people.png")

@route('/prova')
def page(name='Buonipropositi Random'):
    return template('app/views/buonipropositi.tpl', name=name, title='Buoni Propositi Randomize', url_heart="/images/heart.png", url_sport="/images/sport.png", url_friends="/images/friends.png", url_health="/images/health.png", url_money="/images/money.png", social_facebook="/images/facebook.png", social_linkedin="/images/linkedin.png", social_twitter="/images/twitter.png", social_instagram="/images/instagram.png")

@route('/<name>')
def page(name='Buonipropositi Random'):
    print(name)
    return template('app/views/buonipropositi.tpl', name=name, title='Buoni Propositi Randomize', url_heart="/images/heart.png", url_sport="/images/sport.png", url_friends="/images/friends.png", url_health="/images/health.png", url_money="/images/money.png", social_facebook="/images/facebook.png", social_linkedin="/images/linkedin.png", social_twitter="/images/twitter.png", social_instagram="/images/instagram.png")

@error(404)
def error404(error):
    return template('app/views/404.tpl')

@route('/images/<filename:re:.*\.png>')
def send_image(filename):
    return static_file(filename, root='app/images', mimetype='image/png')

@route('/static/<filename:path>')
def send_static(filename):
    return static_file(filename, root='/path/to/static/files')

run(host='0.0.0.0', port=8080, reloader=True, debug=True)
