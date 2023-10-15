#
# FAS-Bus's insertion module of Rio de Janeiro's fleet.
# Part of project FAS-Bus
# More details at README.md
# 

FROM python:3.8-buster as base

# Install dependencies for populate database
RUN python3 -m pip install psycopg2 requests schedule python-logging-loki pika

# Clones repo
RUN mkdir /app

COPY ./app /app/

WORKDIR /app

CMD ["python3","main.py"] 
