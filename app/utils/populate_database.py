import os
import json
from pymongo import Connection

from generate_json import to_JSON, convert_write_json

connection = Connection(
    os.environ.get('MONGODB_HOST', 'localhost'),
    os.environ.get('MONGODB_PORT', 27017),
)
db = connection.mydatabase
connection.drop_database('mydatabase')

csvfile = 'files/file.csv'
jsonfile = 'files/file.json'

to_JSON(csvfile, jsonfile)
with open(jsonfile) as f:
    data = json.load(f)
    data = json.dumps(data)
    entity = json.loads(data)
print(entity)
try:
    i = 0
    for record in entity:
        record['_id'] = str(i)
        print(record)
        db['documents'].save(record)
        i = i+1
except Exception as ve:
    print(ve)
    abort(400, str(ve))
