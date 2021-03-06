
FROM ubuntu

# ...

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \

    apt-get -y install gcc mono-mcs && \

    rm -rf /var/lib/apt/lists/*

# Use an official Python runtime as a parent image

FROM python:2.7.14



# Set the working directory to /app

WORKDIR /app



# Copy the current directory contents into the container at /app

COPY . /app



# Install any needed packages specified in requirements.txt

RUN pip install flask
RUN pip install pandas
RUN pip install sklearn
RUN pip install nltk



EXPOSE 5000

CMD ["python", "index.py"]
