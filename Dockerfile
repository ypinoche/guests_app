FROM python:3.8

#WORKDIR /app

COPY app/app.py app/app.py
COPY app/models.py app/models.py
COPY app/templates /app/templates
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR app/

ENV FLASK_APP=app.py
ENV DATABASE_URL=sqlite:///db.sqlite
EXPOSE 5000
CMD flask db init && flask db migrate -m "initialize migration" && flask db upgrade && flask run -h 0.0.0.0 --port 5000
