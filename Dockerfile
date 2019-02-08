FROM python:3
ENV PYTHONUNBUFFERED 1
ENV USE_POSTGRESQL 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install psycopg2-binary==2.7.7
RUN pip install coverage==4.5.2
RUN pip install tox==3.7.0
COPY . /code/
