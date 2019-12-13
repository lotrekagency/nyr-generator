from bottle import Bottle, run, template, error, static_file
import json
from pprint import pprint
from random import seed
from random import randint
from datetime import datetime
from PIL import Image, ImageDraw, ImageFont
 
image = Image.open('app/images/group_people.png') 
draw = ImageDraw.Draw(image)

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
    
    fontsize = 1
    img_fraction = 0.50
    name = 'Ciao andrea'
    font = ImageFont.truetype("Roboto-Black.ttf", fontsize)
    while font.getsize(name)[0] < img_fraction*image.size[0]:
        fontsize += 1
        font = ImageFont.truetype("Roboto-Black.ttf", fontsize)

    fontsize -= 1
    font = ImageFont.truetype("Roboto-Black.ttf", 200)
    (x, y) = (1000, 25)
    color = 'rgb(255, 255, 255)'
    draw.text((x, y), name, fill=color, font=font)
    image.save('app/views/prova.png')

    return template('app/views/index.tpl', title="Homepage", url_people="/images/group_people.png")

@app.route('/prova')
def page(name='Buonipropositi Random'):
    return template('app/views/buonipropositi.tpl', name=name, title='Buoni Propositi Randomize', url_heart="/images/heart.png", url_sport="/images/sport.png", url_friends="/images/friends.png", url_health="/images/health.png", url_money="/images/money.png", social_facebook="/images/facebook.png", social_linkedin="/images/linkedin.png", social_twitter="/images/twitter.png", social_instagram="/images/instagram.png")

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

run(app, host='0.0.0.0', port=8080, reloader=True, debug=True)