# NYR Generator

New Year's Resolutions generator for lazy people

## Initial setup for Backend

Install MongoDB and start it using

    mongod --dbpath ./mongodata

Then install Python dependencies

    pip install -r ./app/requirements.txt


## Import dev data

To import some fake data to start developing the site use

    python app/utils/generate_json.py
    python app/utils/populate_database.py
