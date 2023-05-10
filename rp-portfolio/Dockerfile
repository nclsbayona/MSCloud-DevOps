FROM docker.io/python:3.12-rc-slim-buster
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
ENV PORT=8000
EXPOSE $PORT
WORKDIR /deploy
COPY . .
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN chmod +x start.sh
ENTRYPOINT ["./start.sh", "python", "manage.py", "runserver"]
CMD ["0.0.0.0:${PORT}"]