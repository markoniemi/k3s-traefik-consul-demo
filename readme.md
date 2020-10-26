# k3s Traefik Consul demo

## Prerequisites

1. install docker
2. install kubectl
3. install k3d > 3.1.3
  
## Create cluster, install Traefik, Consul, Portainer

    ./create_cluster.sh

### Verify installation

    kubectl get pod --all-namespaces

Wait until all pods are running

 * Portainer: [http://localhost:9000](http://localhost:9000)
 * Consul: [http://localhost/ui](http://localhost/ui)

<span style="color:grey"> * Traefik: [http://localhost/dashboard/](http://localhost/dashboard/) trailing slash is important</span>

## Build services

    ./build.sh
    
## Install applications

    ./user-repository/run-k8s.sh
    ./user-application/run-k8s.sh
    
If something goes wrong, just delete the cluster and start again.

    k3d cluster delete k3s-default
    
## Verify installation

User-application: [http://localhost/users](http://localhost/users) login with admin/admin

