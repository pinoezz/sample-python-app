FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
COPY . .
RUN export UBER_CLIENT_ID="{jQoKhy4oW2GN-9WGjJbeZBAPy-ThmZ8d}"&&export UBER_CLIENT_SECRET="{o8EQ8k64OGfnN8T5dO0mZu-MjiY5RzajpljCgjKW}"
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]