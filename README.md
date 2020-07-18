[![CircleCI](https://circleci.com/gh/ankurshishodia12/devops_project.svg?style=svg)](https://circleci.com/gh/ankurshishodia12/devops_project)

summary:
This is a project 4 :Operationalize a machine learning microservices API
This project has sklearn model which is used to predict housing prices in Boston,
according to several features, such as average rooms in a home and data about highway access,
teacher-to-pupil ratios, and so on.This project tests your ability to operationalize a Python flask app—in a provided file,
app.py—that serves out predictions (inference) about housing prices through API calls. 
This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

Our goal is to operationalize this working, machine learning microservice using kubernetes,
which is an open-source system for automating the management of containerized applications.

Instruction to run this project:
firstly,run all commands of Makefile to setup,install and lint. 
this can be done by using following commands :
1.make setup  //setup virtual Environemnet
2.source ~/.devops_project/bin/activate  //this is used to activate the virtual environemnt
3.make install  // it install all the requirements
4.install hadolint by using this command 
   wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && sudo chmod +x /bin/hadolint
   
5.make lint  // this is used test the errors in app.py file


secondly run these command:
1 ./run_docker.sh
2 ./makeprediction.sh (this is should be run in another terminal to get the output from ./run_docker.sh file)
3 ./upload_docker.sh //To uplaod the flask app into docker hub


thirdly, install kubernetes and minikube
 refer to :https://kubernetes.io/docs/tasks/tools/install-kubectl/
 
then run :
1 ./run_kubernetes.sh
and check pods for running by using command : 
2 kubectl get pods
3 ./make_prediction.sh  //  to get the output


fourthly, check .circlci/config.yml file to up and running  in circleci.com



This project contain files :

Dockerfile : Docker can build images automatically by reading the instructions from a Dockerfile. 
The Dockerfile contains all the commands a user could call on the command line to assemble an image.

Makefile :To setup virtual Environemnt and install requirements and test lint for errors.
run_docker.sh :it is used to run and build docker image
make.prediction.sh : it is used to get the output from docker
upload_docker.sh :  it is used to upload repo into docker hub
run_kubernetes.sh : it is used to run and build kubernetes 
output_txt_files : this folder contain output of docker and kubernetes
model_data : this folder contain joblib and housing.csv model data
.circleci :this folder contain config.yml which is used to for CI/CD
requirements.txt : this file contains all the dependecies required to run this project
app.py : this is a Python file
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 