FROM 
RUN apt-get update && \
    apt-get install -y \
    procps \
    vim \
    telnet \
    zip \
    git
EXPOSE 5000
FROM latest
WORKDIR /copilot
COPY requirements.txt
RUN pip install -r requirements.txt
COPY ../
