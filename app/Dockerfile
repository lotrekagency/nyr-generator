# Build FE assets

FROM node:10 as build-fe
RUN npm install yarn
RUN yarn global add gulp

RUN mkdir /feapp

WORKDIR /feapp

COPY package.json /feapp/

COPY scripts/ /feapp/scripts/
COPY styles/ /feapp/styles/
COPY gulpfile.js /feapp/

RUN yarn

RUN gulp

RUN pwd

RUN ls

RUN ls assets

# Build BE

FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

COPY . /app/

RUN pip install gunicorn

RUN pip install -r ./requirements.txt

COPY --from=build-fe /feapp/assets /app/assets

# RUN python manage.py compilemessages
CMD python main.py
