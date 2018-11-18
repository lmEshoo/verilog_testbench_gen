FROM python:3

LABEL Lini Mestar <liniMestar@gmail.com>

RUN pip3 install -U chardet
  
WORKDIR /src