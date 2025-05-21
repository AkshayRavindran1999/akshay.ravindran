# Docker

## What is a container ?
A container is a bundle of Application, Application libraries required to run your application and the minimum system dependencies.
Theory:
A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.


## Containers vs Virtual Machine 

Containers and virtual machines are both technologies used to isolate applications and their dependencies, but they have some key differences:

    1. Resource Utilization: Containers share the host operating system kernel, making them lighter and faster than VMs. VMs have a full-fledged OS and hypervisor, making them more resource-intensive.

    2. Portability: Containers are designed to be portable and can run on any system with a compatible host operating system. VMs are less portable as they need a compatible hypervisor to run.

    3. Security: VMs provide a higher level of security as each VM has its own operating system and can be isolated from the host and other VMs. Containers provide less isolation, as they share the host operating system.

   4.  Management: Managing containers is typically easier than managing VMs, as containers are designed to be lightweight and fast-moving.



## Why are containers light weight ?

Containers are lightweight because they use a technology called containerization, which allows them to share the host operating system's kernel and libraries, while still providing isolation for the application and its dependencies. This results in a smaller footprint compared to traditional virtual machines, as the containers do not need to include a full operating system. Additionally, Docker containers are designed to be minimal, only including what is necessary for the application to run, further reducing their size.

Let's try to understand this with an example:

Below is the screenshot of official ubuntu base image which you can use for your container. It's just ~ 22 MB, isn't it very small ? on a contrary if you look at official ubuntu VM image it will be close to ~ 2.3 GB. So the container base image is almost 100 times less than VM image.



### Files and Folders in containers base images

```
    /bin: contains binary executable files, such as the ls, cp, and ps commands.
    /sbin: contains system binary executable files, such as the init and shutdown commands.
    /etc: contains configuration files for various system services.
    /lib: contains library files that are used by the binary executables.
    /usr: contains user-related files and utilities, such as applications, libraries, and documentation.
    /var: contains variable data, such as log files, spool files, and temporary files.
    /root: is the home directory of the root user.
```

## Docker

### What is Docker ?

Docker is a containerization platform that provides easy way to containerize your applications, which means, using Docker you can build container images, run the images to create containers and also push these containers to container regestries such as DockerHub, Quay.io and so on.

In simple words, you can understand as `containerization is a concept or technology` and `Docker Implements Containerization`.


### Docker LifeCycle 

We can use the above Image as reference to understand the lifecycle of Docker.

There are three important things,

1. docker build -> builds docker images from Dockerfile
2. docker run   -> runs container from docker images
3. docker push  -> push the container image to public/private regestries to share the docker images.



### Understanding the terminology (Inspired from Docker Docs)


#### Docker daemon

The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.


#### Docker client

The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.


#### Docker Desktop

Docker Desktop is an easy-to-install application for your Mac, Windows or Linux environment that enables you to build and share containerized applications and microservices. Docker Desktop includes the Docker daemon (dockerd), the Docker client (docker), Docker Compose, Docker Content Trust, Kubernetes, and Credential Helper. For more information, see Docker Desktop.


#### Docker registries

A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. You can even run your own private registry.

When you use the docker pull or docker run commands, the required images are pulled from your configured registry. When you use the docker push command, your image is pushed to your configured registry.
Docker objects

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. This section is a brief overview of some of those objects.


#### Dockerfile

Dockerfile is a file where you provide the steps to build your Docker Image. 


#### Images

An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a Dockerfile with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.


## INSTALL DOCKER

For Demo, 

Created an Ubuntu EC2 Instance on AWS and run the below commands to install docker.

```
sudo apt update
sudo apt install docker.io -y
```


### Start Docker and Grant Access
Start the Docker daemon and grant acess to the user they want to use to interact with docker and run docker commands.

Always ensure the docker daemon is up and running.

```
docker run hello-world
```

If the output says:

```
docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/create": dial unix /var/run/docker.sock: connect: permission denied.
See 'docker run --help'.
```

This can mean two things, 
1. Docker deamon is not running.
2. Your user does not have access to run docker commands.


### Start Docker daemon

You use the below command to verify if the docker daemon is actually started and Active

```
sudo systemctl status docker
```

If you notice that the docker daemon is not running, you can start the daemon using the below command

```
sudo systemctl start docker
```


### Grant Access to your user to run docker commands

To grant access to your user to run the docker command, you should add the user to the Docker Linux group. Docker group is create by default when docker is installed.

```
sudo usermod -aG docker ubuntu
```

In the above command `ubuntu` is the name of the user, you can change the username appropriately.

**NOTE:** : You need to logout and login back for the changes to be reflected.


### Docker is Installed, up and running 🥳🥳

Use the same command again, to verify that docker is up and running.

```
docker run hello-world
```

Output should look like:

```
....
....
Hello from Docker!
This message shows that your installation appears to be working correctly.
...
...
```



### Clone this repository and move to example folder

```
git clone https://github.com/akshay-ravindran-cloud/akshay.ravindran.git
cd  examples
```

### Login to Docker 

```
docker login
```

```
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: 
Password:
WARNING! Your password will be stored unencrypted in /home/ubuntu/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
```


ubuntu@ip-172-31-23-235:~$ ls
akshay.ravindran
ubuntu@ip-172-31-23-235:~$ cd akshay.ravindran/
ubuntu@ip-172-31-23-235:~/akshay.ravindran$ ls
 CI-CD-Project             Docker-File                 'Jenkins App deployed'  'S3 Bucket'          appspec.yml               scripts
 Cloud-Cost-Optimization   Host-Website-S3-CloudFront   README.md              'VPC Demo Project'   multi-stage-multi-agent
ubuntu@ip-172-31-23-235:~/akshay.ravindran$ cd Docker-File/
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$ ls
Dockerfile  app.py
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$

### Build your first Docker Image

You need to change the username accoringly in the below command

```
docker build -t akshayravindran99/my-first-docker-image:latest .
```

Output of the above command

```
  Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.

 ---> Removed intermediate container fc5d9fde1813
 ---> bfa2e68479b8
Step 5/6 : ENV NAME World
 ---> Running in 9b4963d5a413
 ---> Removed intermediate container 9b4963d5a413
 ---> eefb31a5923a
Step 6/6 : CMD ["python3", "app.py"]
 ---> Running in 3ebf4e75f36f
 ---> Removed intermediate container 3ebf4e75f36f
 ---> 12be7d98f8d6
Successfully built 12be7d98f8d6
Successfully tagged akshayravindran99/my-first-docker-image:latest
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$

```

### Verify Docker Image is created

```
docker images
```

Output 

```

ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$ docker images
REPOSITORY                                TAG       IMAGE ID       CREATED          SIZE
akshayravindran99/my-first-docker-image   latest    12be7d98f8d6   49 seconds ago   546MB
ubuntu                                    latest    a0e45e2ce6e6   3 weeks ago      78.1MB
hello-world                               latest    74cc54e27dc4   3 months ago     10.1kB
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$


```

### Run your First Docker Container

```
docker run -it akshayravindran99/my-first-docker-image
```

Output

```
Hello World
```

### Push the Image to DockerHub and share it with the world

```
docker push abhishekf5/my-first-docker-image
```

Output

```

ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$ docker push akshayravindran99/my-first-docker-image
Using default tag: latest
The push refers to repository [docker.io/akshayravindran99/my-first-docker-image]
5b6b149e4b00: Pushed
16c4c3fdb86c: Pushed
24ba894831d1: Pushed
8901a649dd5a: Pushed
latest: digest: sha256:a03f250c51de12290a1434a120063bec84da606f331531b0f24fb4bbaeced4d4 size: 1155
ubuntu@ip-172-31-23-235:~/akshay.ravindran/Docker-File$

```

