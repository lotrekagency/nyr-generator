
import bottle

from bottle import run, template, error, route, request, abort

import json

from pprint import pprint
from random import seed
from random import randint
from datetime import datetime
from pymongo import Connection


connection = Connection('localhost', 27017)
db = connection.mydatabase
# generare 6 buoni propositi di categorie diverse
@route('/api/random-generate/', method='GET')
def get_document():

    count = db['documents'].count()
    print(count)
    categories = ['Sport', 'Lavoro', 'Motto']

    for category in categories:
        entity = db['documents'].find_one({'Categoria':category})
        print(entity)
    if not entity:
        abort(404, 'No document with id %s' % id)
    return 'eilà'

@route('/')
def index():
    return template('app/views/index.tpl')

@route('/<name>')
def page(name='World'):
    return template('app/views/page.tpl', name=name)

@error(404)
def error404(error):
    return template('app/views/404.tpl')


run(host='localhost', port=8080, reloader=True)