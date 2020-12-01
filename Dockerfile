FROM python:alpine

RUN apk add --update \
  bash \
  git

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY csv-to-influxdb.py ./

CMD [ "python", "./csv-to-influxdb.py" ]
