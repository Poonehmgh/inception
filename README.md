# inception

## Need to know


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
