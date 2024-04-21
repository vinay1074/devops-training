FROM ubuntu:latest

WORKDIR /app

RUN sudo apt-get update && apt-get install -y nano --allow-unauthenticated

ADD . /app/

EXPOSE 8080

# Example: Run a command when the container starts
CMD ["echo", "ADD is present in the Dockerfile"]
