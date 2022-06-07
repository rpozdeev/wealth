FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN wealth create-db
RUN wealth populate-db
RUN wealth add-user -u admin -p admin
EXPOSE 5000
CMD ["wealth", "run"]
