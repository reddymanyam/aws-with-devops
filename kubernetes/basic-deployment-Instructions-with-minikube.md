1. first install docker.

      # Add Docker's official repo
      sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

      # Install Docker
      sudo dnf install -y docker-ce docker-ce-cli containerd.io

      # Start and enable Docker service
      sudo systemctl start docker
      sudo systemctl enable docker

      # Verify Docker
      docker --version

2. create a dockerfile in that directory.

3. create a docker image
   
   # command
   docker build -t your-dockerhub-username/your-app-name:latest .

   # example
   docker build -t reddymern/mern-frontend:latest .

4. create container
   
   # command
   docker run -d -p 3000:80 --name mern-frontend-container reddymern/mern-frontend:latest

   In genral we use ---> docker run --name docker-container-name docker-image-name

5. Display all the docker images 
   
   docker ps


6. push docker image to dockerHub
    
    1.docker login
    2.docker push your-dockerhub-username/your-app-name:latest
    
- for mernstack/fullstack, use one yml file (complete frontend and backend) (docker-compose.yml) then run this command ----> docker-compose up --build


# deploying / managing these containers with the help of kubernetes

# Install kuberenetes environment

- Step 1: Prerequisites
  sudo dnf install -y curl wget conntrack

- Step 2: Install kubectl (Kubernetes CLI)
  curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  chmod +x kubectl
  sudo mv kubectl /usr/local/bin/
  kubectl version --client

- step 3: Install Minikube
  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
  sudo rpm -Uvh minikube-latest.x86_64.rpm

  # verify minikube 
  - minikube version   

- step 4: Start Minikube with Docker Driver
  minikube start --driver=docker


# - step 5: Create a yaml file (this is the heart of kubernetes) (Refere yaml file in the directory).

   - There are different kinds of yaml files based on requirement.
   
   - In Kubernetes YAML files, the kind field specifies the type of Kubernetes resource being  defined. Common kind values include **Pod, Deployment, Service, ConfigMap, Secret, StatefulSet, DaemonSet, Job, CronJob, and Ingress,** among others. Each kind represents a different type of object that Kubernetes manages, such as deployments, network services, or persistent storage. 

   - Here's a breakdown of some common kind values:
   
   - Pod: The basic unit of deployment in Kubernetes, representing a single instance of an application.    
   - Deployment: Manages the deployment and scaling of a set of identical pods. 
   - Service: Exposes an application running on a set of pods as a network service. 
   - ConfigMap: Stores configuration data for applications. 
   - Secret: Stores sensitive information like passwords and API keys. 
   - StatefulSet: Manages stateful applications, providing stable network identities and persistent storage. 
   - DaemonSet: Ensures that a pod runs on all (or a subset of) nodes in a cluster. 
   - Job: Creates one or more pods that execute a specific task and then terminate. 
   - CronJob: Creates jobs on a schedule. 
   - Ingress: Manages external access to services in a cluster. 

- step 6: kubectl apply -f hello-deployment.yaml

- step 7: kubectl get nodes
          kubectl get pods -A

- step 8: minikube service hello-service

# some additional commands 
Stop Minikube	           ------------------->  minikube stop
Delete Minikube	         ------------------->  minikube delete
Access dashboard (GUI)	 ------------------->  minikube dashboard
SSH into Minikube node	 ------------------->  minikube ssh
View cluster info	       ------------------->  kubectl cluster-info
   