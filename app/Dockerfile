# Build FE assets

FROM node:10 as build-fe
# RUN npm install yarn
# RUN yarn global add webpack
RUN mkdir /feapp

RUN mkdir /feapp/build
# WORKDIR /feapp

# COPY package.json /feapp/
# COPY webpack.config.js /feapp/
# COPY public/ /feapp/public/
# RUN yarn
# RUN yarn build

FROM python:3.6


ENV PYTHONUNBUFFERED 1


# create root directory for our project in the container
RUN mkdir /app

# Set the working directory to /app
WORKDIR /app


COPY . /app/

RUN pip install gunicorn

RUN pip install -r ./app/requirements.txt


COPY --from=build-fe /feapp/build /app/build

# RUN python manage.py compilemessages
CMD cd app && python main.py
