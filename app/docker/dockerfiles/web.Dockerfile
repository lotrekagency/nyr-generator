# this is an official Python runtime, used as the parent image
FROM python:3.6.5-slim

RUN apt-get -y update \
  && apt-get install -y gettext \
  # Cleanup apt cache
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Python dependencies
RUN pip install --upgrade pip

COPY ./requirements.txt /app/

RUN pip install -r ./requirements.txt

# unblock port 80 for the Bottle app to run on
EXPOSE 5000

# Finally, we run uWSGI with the ini file we
# created earlier
CMD [ "uwsgi", "--ini", "app/app.ini" ]