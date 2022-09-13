FROM nginx:1.15.8

RUN rm /etc/nginx/nginx.conf
COPY nginx/nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/project.conf /etc/nginx/conf.d/

FROM python:3.10.0

COPY requirements.txt .
RUN pip install -U pip
RUN pip install --upgrade pyls -i https://pypi.python.org/simple
RUN pip install --no-cache-dir -r requirements.txt

CMD python3 bot/bot.py & gunicorn -w 1 -b 0.0.0.0:5000 wsgi:server