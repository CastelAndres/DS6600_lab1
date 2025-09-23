# Start from the latest Ubuntu image
FROM ubuntu:latest

# Update package lists & install Python 3
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get clean

#Set the working directory inside the container
WORKDIR /app

#Copy local files into the container
COPY . /app

#By default, launch Python 3
CMD ["python3"]
