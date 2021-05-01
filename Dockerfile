FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y python3 python3-pip

RUN python3 -m pip install pytest

RUN mkdir /src
COPY test_main.py /src/test_main.py

#WORKDIR /src

#CMD ["pytest"]