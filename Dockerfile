FROM python:3.8-slim-buster

RUN mkdir /recipe-retrieval

COPY . /recipe-retrieval

WORKDIR /recipe-retrieval

RUN pip3 install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
