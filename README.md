# inception

## Need to know

### Docker
## Docker

##### a good ref on starting: https://docs.docker.com/get-started/


Docker is an open-source platform that allows you to automate the deployment, scaling, and management of applications using containerization. It provides a way to package an application and its dependencies into a standardized unit (= a container).

Here are some key features of Docker:

1. **Containerization**: Docker utilizes containerization technology, allowing you to package an application and its dependencies into a container.
    
2. **Portability**: Docker containers are highly portable. Once a container is created, it can be run on any machine or cloud platform that supports Docker, without worrying about differences in underlying infrastructure or operating systems. This eliminates the "works on my machine" problem.
    
3. **Isolation**: Docker provides process-level isolation, allowing containers to run independently without interfering with each other or the host system.

5. **Efficiency**: Docker enables efficient resource utilization by sharing the host operating system's kernel and resources among containers. This eliminates the need for running separate virtual machines (VMs) for each application, resulting in reduced overhead and improved efficiency.
    
5. **Version Control**: Docker images and containers can be versioned, allowing you to track changes and roll back to previous versions if needed. This enables easier collaboration among team members and facilitates the reproducibility of application environments.
    
6. **Scalability**: Docker simplifies application scaling. You can replicate and distribute containers across multiple hosts, allowing for horizontal scaling and efficient resource allocation. Docker also integrates with orchestration tools, such as Docker Swarm and Kubernetes, to manage containerized applications at scale.
    
7. **Dependency Management**: Docker simplifies dependency management by encapsulating an application and its dependencies within a container. This eliminates conflicts between different versions of software libraries or dependencies, making it easier to manage complex application stacks.
    
8. **Ecosystem and Community**: Docker has a vibrant ecosystem and a large community. It provides a vast collection of pre-built Docker images available from Docker Hub, a public registry. Additionally, the Docker community actively contributes to the development of tooling, libraries, and best practices.

there are other containerization technologies and platforms apart from Docker. While Docker is the most widely known and commonly used containerization solution, there are alternatives like *Podman*, *rkt*, *runc* and etc.


Docker piggybacks off of features in the Linux kernel to perform its magic. Because of this reliance on the Linux kernel, it’s important to note that Docker _only_ runs on Linux. For instance, if you develop on an Apple computer (which uses a Darwin/BSD Kernel), you’ll need to install a lightweight Linux virtual machine before being able to use Docker.

Docker, by default, runs natively on Linux operating systems because it leverages certain features of the Linux kernel, such as namespaces and control groups, for containerization. This means that if you have a Linux machine, you can use Docker without any additional setup.
However, Docker also provides solutions for non-Linux machines, such as Windows and macOS, through **Docker Desktop**. Docker Desktop provides a lightweight virtualization environment that runs a Linux virtual machine (LinuxKit) under the hood. This Linux virtual machine enables Docker to function on non-Linux operating systems.

So, while Docker itself relies on Linux kernel features, Docker Desktop provides a way for developers to use Docker on non-Linux machines without requiring a separate Linux installation or virtual machine setup

Docker is written in the Go programming language and takes advantage of several features of the Linux kernel to deliver its functionality. Docker uses a technology called `namespaces` to provide the isolated workspace called the _container_. When you run a container, Docker creates a set of _namespaces_ for that container.
some good refs: 
https://www.codementor.io/blog/docker-technology-5x1kilcbow
https://docs.docker.com/get-started/

### Docker image

A **Docker image** is a read-only template used to create Docker containers. It contains the instructions for creating a container. Docker images are built from a set of instructions defined in a Dockerfile, which specifies how to assemble the image.

![alt text](https://i.imgur.com/GQmpMcx.png)

![Alt Text](https://i.imgur.com/thalmE7.png)

### Docker compose
Docker Compose is a tool that allows you to define and manage multi-container applications. It is a separate component of Docker that works in conjunction with Docker Engine to simplify the orchestration of multiple containers that make up an application.

With Docker Compose, you can **define the configuration** of your application services, including their dependencies, network connections, volumes, and other settings, in a YAML file called `docker-compose.yml`. This file serves as a declarative specification for your application's infrastructure.

Here are some key features and capabilities of Docker Compose:

1. **Multi-Container Applications**: it is designed for managing multi-container applications. 
		- You can define multiple services within a single `docker-compose.yml` file, where each service represents a separate containerized component of your application.
    
2. **Service Definition**: In the `docker-compose.yml` file, you can specify the Docker images, environment variables, ports, volumes, network connections, and other configuration details for each service. 
	Docker Compose uses this information to create and manage the containers accordingly.
    
3. **Dependency Management**: it allows you to define and manage dependencies between services.
    
4. **Container Orchestration**: it simplifies the orchestration of multiple containers. With a single command (`docker-compose up`), it can create and start all the containers defined in the `docker-compose.yml` file, automatically handling the necessary network connections and configurations.
    
5. **Environment Variables**: it supports the use of environment variables within the `docker-compose.yml` file. This allows you to parameterize your configuration and dynamically pass values to containers at runtime, making your application more flexible and configurable.
    
6. **Networking and Volumes**: it handles the creation and management of networks and volumes required by your application. It can create isolated networks for your services and automatically manage the associated DNS resolution. It also facilitates the configuration of shared volumes between containers.
    
7. **Development and Testing Environments**: it is commonly used for local development and testing environments. It provides an easy way to define the required services and their configurations, allowing developers to spin up the entire application stack with a single command and replicate the production environment locally.

![alt text](https://i.imgur.com/yrgTV4J.png)

cheatsheet: https://dockerlabs.collabnix.com/docker/cheatsheet/

#### .YML
.yml (YAML) is a human-readable data serialization format. It stands for "YAML Ain't Markup Language." YAML is often used for configuration files and data exchange between programming languages.
Data serialization refers to the process of converting data structures or objects into a format that can be easily stored, transmitted, or reconstructed later. In other words, it is the transformation of complex data into a serialized form that can be saved to a file, sent over a network, or stored in a database.


### Docker engine
Docker Engine, also known as Docker runtime, is the core component of the Docker platform. It is responsible for building, running, and managing Docker containers. Docker Engine combines several essential elements that enable containerization and provides the necessary tools and services to work with Docker.

The Docker Engine consists of three main parts:

1. **Docker Daemon (`dockerd`)**
2. **RESTful API**
3. **Command-Line Interface (CLI)**
![Alt Text](https://i.imgur.com/TOjdfjG.png)
It's important to note that the term "Docker Engine" is sometimes used interchangeably with "Docker" itself, as it represents the core functionality of the Docker platform. However, Docker is a broader ecosystem that includes additional components like Docker Compose, Docker Swarm, and Docker Registry, which extend the capabilities of Docker Engine for orchestration, scaling, and image distribution.
### Docker daemon
a daemon refers to a background process or service that runs continuously and performs specific tasks or functions. 

1. **Background Process**: A daemon runs as a background process without requiring user intervention. It typically starts automatically when the system boots up and continues to run until the system shuts down.
    
2. **Long-Running**: Daemons are designed to run indefinitely, providing continuous services or performing recurring tasks. They often have no specific termination point.
    
3. **Independent and Headless**: Daemons usually operate independently of direct user control or interaction. They do not have a user interface and typically do not receive input from or display output to users directly. Instead, they provide services or perform tasks in the background, often in response to system events or requests.
    
4. **Service-Oriented**: Daemons are often responsible for providing specific services or functionality to other programs or users. 
    
5. **Managed by the System**: Daemons are typically managed by the operating system, which starts and stops them as needed.
    
6. **Runs as a Process**: Technically, a daemon is a type of process.

the background service that runs on a host machine and manages Docker containers and images. It is a central component of the Docker platform responsible for building, running, and monitoring containers.

The Docker daemon, also known as `dockerd`, acts as a server process that listens to the Docker API requests from clients and performs the necessary actions to manage containerized applications. It runs as a background process and continuously runs on the host operating system.


## Project
## Good to Know
