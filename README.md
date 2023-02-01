# Guest Application


A simple application with a flask-backend and a SQLite database.

To try it : 

1 - Install dependencies with pipenv 
👉 ```pipenv install --dev && cd app/```

2 - Set up database
👉 ```bash
FLASK_APP=app.py pipenv run flask db init && FLASK_APP=app.py  pipenv run flask db migrate &&  FLASK_APP=app.py pipenv run flask db upgrade```

2 - Launch flask web server
👉 ```bash
FLASK_APP=app.py pipenv run flask run -p 5000```

3 - 👉 Head over to [localhost:5000](http://localhost:5000) and test it!
