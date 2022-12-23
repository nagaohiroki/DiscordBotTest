FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y git
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN git clone https://github.com/nagaohiroki/DiscordBotTest.git
RUN pip3 install -r /DiscordBotTest/requirements.txt
CMD python3 /DiscordBotTest/run.py
