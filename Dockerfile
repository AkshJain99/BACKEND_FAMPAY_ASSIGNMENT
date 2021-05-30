FROM python:3.7

# create root directory for our project in the container
RUN mkdir /fampay

# Set the working directory to /youtube_fetch_api
WORKDIR /fampay

# Copy the current directory contents into the container at /youtube_fetch_api
ADD . /fampay/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt