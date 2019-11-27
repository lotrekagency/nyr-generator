from bottle import Bottle, run, template, error
import json
from pprint import pprint
from random import seed
from random import randint
from datetime import datetime

app = Bottle()


@app.route('/')
def index():
    with open('newyearsresolution.json') as f:
        data = json.load(f)
    json_size = len(data['newyearsresolution'])-1
    dt = datetime.today()  # Get timezone naive now
    seed_n = int(dt.timestamp())
    seed(seed_n)
    value = randint(0, json_size)
    print(value)
    print(data['newyearsresolution'][value])
    return template('app/views/index.tpl')

@app.route('/<name>')
def page(name='World'):
    return template('app/views/page.tpl', name=name)

@app.error(404)
def error404(error):
    return template('app/views/404.tpl')


run(app, host='localhost', port=8080, reloader=True)