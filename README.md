# inception

## Need to know

## Containerization

Containerization is a method of **operating system-level virtualization** that involves packaging an application along with its dependencies into a self-contained unit that can be executed consistently across different computing environments.
Containerization provides a standardized and portable approach to deploying and running applications.


![alt text](https://i.imgur.com/bbXCPt3.png)

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

### Docker client

The Docker client, often referred to as the Docker CLI (Command-Line Interface), is a command-line tool that provides a user-friendly interface for interacting with the Docker Engine.

![alt text](https://i.imgur.com/OPZZb5u.png)

### REST API

REST (Representational State Transfer) is an architectural style for designing networked applications. RESTful APIs (Application Programming Interfaces) are interfaces that adhere to the principles of REST. They provide a standardized way for different software systems to communicate and interact with each other over the internet.

Docker Engine exposes a RESTful API that allows clients (such as the Docker CLI) to interact with the Docker daemon. The API provides a set of endpoints and commands that enable users to manage containers, images, volumes, networks, and other Docker resources programmatically.

### **Command-Line Interface (CLI)**

The Docker CLI is a command-line tool that allows users to interact with the Docker Engine and perform various operations related to containers and images. Users can issue commands to build, run, stop, start, inspect, and manage Docker containers using the Docker CLI.

### Docker registry

A Docker registry is a central repository that stores Docker images. It is a server-side application that allows users to store and distribute Docker images to be used across different environments and by multiple users.

The Registry is open-source, under the permissive Apache license.

### docker hub

a public registry provided by Docker.


### Docker vs VM

Docker and virtual machines (VMs) are both technologies used for virtualization, but they have distinct differences in their approach and architecture.

![alt text](https://i.imgur.com/b5A0MkZ.png)

![alt text](https://i.imgur.com/sdNTX7a.png)

Docker containers use operating system-level virtualization, running on a single host operating system and share the host kernel, libraries, and resources and providing process-level isolation.
- Virtual machines use hardware-level virtualization, offering full operating system isolation. They emulate complete computer systems, including virtual CPUs, memory, storage, and network interfaces. Each virtual machine runs its own full-fledged operating system on top of a hypervisor, which manages the hardware resources.


![alt text](https://i.imgur.com/jNmGYP0.png)

### Volumes

volumes are a feature that allows data to be persistently stored and shared between containers and the host machine. Volumes provide a way to manage and handle persistent data in Docker containers, ensuring that data is preserved even when containers are stopped, removed, or replaced.
Volumes are commonly used for scenarios where persistent data storage is required, such as databases, file uploads, application configuration files, or any other data that needs to be preserved across container restarts or upgrades.

By utilizing volumes, Docker makes it easier to manage and handle persistent data within containers, separating the concerns of application logic from data storage and ensuring that important data is preserved and accessible throughout the container lifecycle.

![alt text](https://i.imgur.com/cCdtfbj.png)

**A Docker image is a collection of read-only layers. When you launch a container from an image, Docker adds a read-write layer to the top of that stack of read-only layers. Docker calls this the Union File System. Any time a file is changed, Docker makes a copy of the file from the read-only layers up into the top read-write layer. This leaves the original (read-only) file unchanged. When a container is deleted, that top read-write layer is lost. This means that any changes made after the container was launched are now gone. A Docker volume “lives” outside the container, on the host machine. From the container, the volume acts like a folder which you can use to store and retrieve data.**

Docker volumes can be created using `docker volume create some_name` command (By default, Docker creates the volume in the Docker host's volume storage area. MacOS: /var/lib/docker/volumes/)
But when we run docker-compose, the volumes specified in the `volumes` section of the Docker Compose file will be created automatically. Docker Compose manages the creation and management of volumes for you based on the configuration provided.

![alt text](https://i.imgur.com/8PPDwri.png)




a good source on volumes: https://www.ionos.com/digitalguide/server/know-how/docker-container-volumes/



## Project

### 1-VM 
First, we need to do everything the project asks for, in a VM. So the very first step would be to install a VM. We can do it via VirtualBox which is open source and free. Here is no requirement to configure our machine to the command line, we can quite install a graphical interface like Gnome for example.
#### 1. VM: I installed Debian 11, and considered 20 gig for my VM. (If the considered memory is not high enough, the software and the packages will not be installed correctly.) {tick these to be installed when asked during the installation : visual desktop + Gnome + SSH }

 #### 2. Docker on VM 
 Second, I installed the docker on my VM (guide here: https://docs.docker.com/engine/install/debian/) 
 #### 3. Connected my host with my VM through SSH.
I installed SSH-server on my VM: `sudo apt install openssh-server` then add this rule to the port forwarding according to this reference: https://dev.to/developertharun/easy-way-to-ssh-into-virtualbox-machine-any-os-just-x-steps-5d9i and then in the host machine adding this command: ```
		ssh -p 3022 <username>@127.0.0.1```
		and then provide the password and the user name (normal user name of VM in small letters.) 
(By default, the SSH server on Debian does not allow direct root login via SSH for security reasons.)
		when connected with the VM through ssh, we can clone our repo in the VM through the terminal from the host and just edit our code normally on our machine. but we need to add the ssh key of the VM to our git repo first.

### 2-Nginx

Nginx is a software that helps websites and applications work better and handle lots of visitors. It can be used as a web server or a middleman between the visitors and the actual servers that store the website or app. Nginx makes websites load faster, distributes the workload across servers, and helps keep everything running smoothly.

It's a popular **open-source web server** and reverse proxy server software. It is designed to efficiently handle high traffic websites and applications, offering excellent performance, scalability, and reliability.

Nginx can now function as a web server, load balancer, reverse proxy server, mail proxy server, and more. **Nginx is often used as a front-end proxy to distribute incoming traffic across multiple backend servers, improving the overall performance and reliability of web applications.

Some key features of Nginx include:

1. High performance: Nginx uses an asynchronous, event-driven architecture that allows it to efficiently handle a large number of concurrent connections while consuming fewer system resources compared to traditional web servers.
    
2. Load balancing: Nginx can distribute incoming traffic across multiple servers, helping to evenly distribute the workload and improve the responsiveness of web applications.
    
3. Reverse proxying: It can act as a reverse proxy server, sitting between clients and backend servers. This allows Nginx to handle requests on behalf of the backend servers, providing features such as SSL termination, caching, and request routing.
    
4. Caching: Nginx includes built-in caching capabilities that can help reduce the load on backend servers by serving static content directly from memory or disk.
    
5. SSL/TLS termination: Nginx can handle SSL/TLS encryption and decryption, offloading this processing from backend servers and improving overall performance.
    
6. Virtual hosting: Nginx supports virtual hosting, allowing multiple websites or applications to be hosted on a single server.




 
## Good to Know
