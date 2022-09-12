FROM python:3.10.0

WORKDIR usr/src/bot
RUN pip install --upgrade pyls -i https://pypi.python.org/simple
RUN pip install --no-cache-dir -r requirements.txt
COPY . .