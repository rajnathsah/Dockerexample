# Docker & Python
An example of using Python with Docker
# Docker
Install [docker client](https://docs.docker.com/install/) and setup as per documentation.

# Python
Install [python](https://www.python.org/downloads/).

Write sample pyhon program to print 'hello world' and save file as main.py.
Run the program to test it.  
```python
python main.py
```
Create a directory named dockerexample (in this case) and place main.py in it.

Next create a file named Dockerfile and add below lines of code

```dockerfile
FROM python:3.7

RUN mkdir -p /var/dockerexample

WORKDIR /var/dockerdxample

COPY ./ /var/dockerexample

ENTRYPOINT python /var/dockerexample/main.py
```  
 First line of above code is our base python image, you can search the python images on [Docker](https://hub.docker.com/_/python/).
 For this example, i have used python 3.7.  
 
 Next we create a directory to place our code in docker image.  
 
 Then we copy our entire project.  
 
 Finally we set an entrypoint, which is the command which will be executed first when we run docker image.
 
 Add optional .dockerignore file to include the files and directory which needs to excluded from docker image.
 Content of this file looks something like below.
 ```dockerfile
# Project settings
.idea/
``` 
In this case, i am excluding .idea directory which gets created in project directory because i am using PyCharm for writing code. You can include any file or directory needs to excluded from docker image in this file.

Build docker docker image by running the below command
```dockerfile
docker build . -t dockerexample
```  
Here . indicates that our context(Dockerfile) is in current directory and dockerexample is the name of image, it can be anything you wish to have.

One image is build, run the program by running below command.
```dockerfile
docker run dockerexample
```

 
 