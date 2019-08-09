FROM python:3.6.7

ENV PYTHONUNBUFFERED=1

RUN mkdir /usr/src/learnDjango

WORKDIR /usr/src/learnDjango/

COPY requirements.txt /usr/src/learnDjango

RUN pip3 install -r requirements.txt

COPY . /usr/src/learnDjango/

COPY entrypoint.sh /usr/src/learnDjango

EXPOSE 8000

CMD ["./entrypoint.sh"]

