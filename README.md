# inception

## Need to know


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
