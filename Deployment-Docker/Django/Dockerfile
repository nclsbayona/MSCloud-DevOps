FROM docker.io/python:3.12-rc-slim-buster
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
ENV PORT=8000
EXPOSE $PORT
COPY start.sh /start.sh
RUN chmod +x /start.sh
WORKDIR /deploy
ENTRYPOINT ["/start.sh"]