# NYR Generator

New Year's Resolutions generator for lazy people

## Initial setup for Backend

Run it inside `app` folder.

Install MongoDB and start it using

    mongod --dbpath ./mongodata

Then install Python dependencies

    pip install -r requirements.txt

## Run the project locally

Run it inside `app` folder.

    python main.py

## Import dev data

Run it inside `app` folder.

To import some fake data to start developing the site use

    python utils/generate_json.py
    python utils/populate_database.py
