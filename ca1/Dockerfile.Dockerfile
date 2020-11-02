
#This brings in all nessacary components of python 3 to the image
FROM python:3
#Creates a working directory called project, if you don't do this one will just be created anyway
WORKDIR /project
#Brings both index and style files into this docker image
COPY index.html ./
COPY style.css ./
#Runs the python server on the server port 8080
CMD python -m http.server 8080
