# import base image
FROM python:alpine3.17
#move to  workdir
WORKDIR /usr/src/app
COPY . .
#install dependecies
RUN pip install -r requirements.txt
#run server
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
