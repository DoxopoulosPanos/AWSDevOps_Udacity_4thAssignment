[![CircleCI](https://dl.circleci.com/status-badge/img/gh/DoxopoulosPanos/AWSDevOps_Udacity_4thAssignment/tree/circleci-project-setup.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/DoxopoulosPanos/AWSDevOps_Udacity_4thAssignment/tree/circleci-project-setup)

## Project Summary

The aim of this project is to deploy an application that makes predictions for housing prices in Boston. There are 2 ways to deploy the app. 
1) Using a docker image you are able to deploy the app in a docker container
2) Using a Kubernetes cluster you are able to deploy the applications in containers inside Kubernetes pods. This is a more scalable solution, able to adjust the resourses according to the load.
In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

The project is part of the assignment for the Udacity course AWS Cloud devops Engineer.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

## Instructions on how to run the Python scripts and web app

- Run the application in a Docker container:  `./run_docker.sh`
- Run the application in a Kubernetes cluster:  `./run_kubernetes.sh`


## A short explanation of the files in the repository.

- output_txt_files : Folder with Two files (docker_out.txt, kubernetes_out.txt) with the output of the application server running in docker and running in a kubernetes cluster respectively.
- app.py : The code of the application (server)
- make_predictions.sh : File that can execute a request/call to the server and retrieve a prediction.
- Dockerfile : The configuration to create a docker image and hence a container (including the application)
- Makefile : File to install all the prerequisites. 
- requirements.txt : File that includes all the required libraries and their versions. This can be used from the Makefile.
- run_docker.sh : File that allows to build a docker image (with the application) and run it in a container
- run_kubernetes.sh : Run the Docker Hub container in a local kubernetes cluster
- upload_docker.sh : file that is used to upload/push the created docker image to DockerHub, in order to be used from Kubernetes.
