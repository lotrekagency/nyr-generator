from bottle import Bottle, run, template, error, static_file
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
    return template('app/views/index.tpl', title="Homepage", url_people="/images/group_people.png")

@app.route('/<name>')
def page(name='World'):
    return template('app/views/page.tpl', name=name)

@app.error(404)
def error404(error):
    return template('app/views/404.tpl')

@app.route('/images/<filename:re:.*\.png>')
def send_image(filename):
    return static_file(filename, root='app/images', mimetype='image/png')

@app.route('/static/<filename:path>')
def send_static(filename):
    return static_file(filename, root='/path/to/static/files')

run(app, host='localhost', port=8080, reloader=True, debug=True)