FROM python:3.5.1
RUN mkdir /copilot
WORKDIR /copilot
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . /copilot
