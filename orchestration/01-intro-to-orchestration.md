# Orchestration tools 

> This will be updated/filled out as research is done.

- Orchestration is delivering containers and applications via code and orch tools.
- Common orch tools: Docker Swarm, Kubernetes
- Docker for Desktop - helper tool for managing containers.

### Hosting

- Google Cloud - has nice gcloud sdk / cli tools - https://console.cloud.google.com

### Kubernetes

- creates/manages container sets aka "pods" based on docker containers (although containerd support is being discussed.)
- also load balancers and other connections
- minikube - small kubernetes env
- kubectl - cli tool
- output from kubectl is in BSON, not JSON - careful!

### Helm
- this is like ansible for kubernetes
- you can define your container setups in version-controlled code.
- simplifies deploys 
- installs "Chart" files via Tiller
- Chart files describe a container build - using keywords, sources, etc.

### Heapster
 - monitoring tool

### Quay
 - container repo - Artifactory could also be used as container repo.


### Questions

Vagrant? gRPC calls?
