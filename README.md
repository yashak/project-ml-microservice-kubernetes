<include a CircleCI status badge, here>

## Project Overview

This is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Project Tasks

* **app.py** - Python Flask application that acts as a Machine Learning Microservice API for the data
* **model_data** - `sklearn` model pre-trained to predict housing prices in Boston
* **Makefile** - Linux Makefile to setup the development environment and lint the source files
* **run_docker.sh** - shell script to automate generation of the Docker container
* **update_docker.sh** - shell script to automate building and uploading Docker image to Docker Hub
* **run_kubernetes.sh** - shell script to automate deploy the application on the Kubernetes cluster
* **output_text_files** - sample results of making prediction both in Docker container and Kubernetes cluser
* **.circleci** - configuration file to automate testing using CircleCI tool 

### Clone the Git Repository

To clone the git repository:

1.  Download and install git on your operating system
1.  Clone the repository at https://github.com/yashak/project-ml-microservice-kubernetes 

#### Set up Docker container

1.  Download and install Docker for your operating system. For windows it would be Docker Desktop.  
1.  Run the following command from your command-prompt:

```shell script
>  ./run_docker.sh
```

It will build the image and start it in Docker container in local environment.

To verify that the API works as expected run the following command in separate window:

```shell script
> ./make_prediction.sh
```

When you're done testing Docker, press CTRL-C in the original console window to stop the API.

#### Upload the container to Docker Hub

Following command allows to upload current image to Docker Hub:

```shell script
> ./upload_docker.sh
```

When executed, image of current container will be pushed into Docker Hub.

#### Deploy the container to Kubernetes

To run the Docker container in the local Kubernetes environment:

1.  Download and install **kubectl** for your operating system
1.  Download and install **minikube** for your operating system
1.  Open a command-prompt and enter the following:

```shell script
> ./run_kubernetes.sh
```

When you run this script, the following takes place:

* The Docker image is downloaded from Docker Hub and deployed to your Kubernetes cluster
* all pods are being listed
* The Machine Learning Microservice API is started and exposed for use on port 8000

To verify that the API works as expected run the following command in separate window:

```shell script
> ./make_prediction.sh
```