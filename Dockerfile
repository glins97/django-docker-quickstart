FROM python:3.9-slim

COPY . /app
WORKDIR /app

RUN python3 -m pip install -r requirements.txt

# --- django db stuff
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
# ------------------

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

