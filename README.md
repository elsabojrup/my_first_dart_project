# my first dart project

This project is my first dart project. It will include errors, [notes](Notes/my-notes.md)
and not(!!) best-practise methods, however I will learn alot from this. 

## How to run my first Dart project with docker
### Step 1
First of all, you need to have docker installed on your computer. If you don't have docker installed please visit [Docker's official website](https://docs.docker.com/get-docker/) for installation instructions.

### Step 2
Navigate to your project's root directory where the Dockerfile is located, and run the following command to build the Docker image:
```bash
docker build -t myfirstdartproject .
```

### Step 3 
Run myfirstdartproject in the Docker Container running following command. 
```bash
docker run myfirstdartproject 
```