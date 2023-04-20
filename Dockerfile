FROM ubuntu
RUN apt-get update -y
RUN apt-get install python3-pip -y
RUN pip3 install django
COPY . .
RUN python3 manage.py migrate
CMD ["python3","manage.py""runserver","0.0.0.0:8000"]
