FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
COPY . .
RUN export UBER_CLIENT_ID="{TvvTAzYa89QF3rSQl-YHZf0PDGDmQ0ee}"&&export UBER_CLIENT_SECRET="{sSGE9KVlC7KdV0icNYDfdfim6nOCtLsq5P_rhTBA}"
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]
