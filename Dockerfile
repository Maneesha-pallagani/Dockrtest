FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install python-pip -y
RUN pip install Flask
RUN pip install redis
RUN apt-get install -y libmysqlclient-dev
RUN pip install mysql-python
ADD app.py /home/maneesha/dockertest/app.py
ENTRYPOINT ["python"]
CMD ["/home/maneesha/dockertest/app.py"]
