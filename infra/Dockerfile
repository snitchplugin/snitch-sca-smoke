FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://get.example.com/install.sh | sh
COPY app /app
CMD ["/app/run"]
