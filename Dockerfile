FROM nginx:1.15.8

RUN rm /etc/nginx/nginx.conf
COPY nginx/nginx.conf /etc/nginx/
#RUN rm /etc/nginx/conf.d/default.conf
#COPY nginx/project.conf /etc/nginx/conf.d/

FROM python:3.10.0

WORKDIR /usr/src/docker_flask

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD python3 -u ./bot/bot.py & gunicorn -w 1 -b 0.0.0.0:8000 wsgi:server