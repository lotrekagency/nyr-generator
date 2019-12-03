FROM python:3.7 as build-python

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

EXPOSE 8080
ENV PORT 8080
ENV PYTHONUNBUFFERED 1
ENV PROCESSES 4