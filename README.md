# How to Install operator

_EDP installation can be applied on two container orchestration platforms: OpenShift and Kubernetes._

_**NOTE:** Installation of operators is platform independent, accordingly we have unified instruction for deploying._


### Prerequisites
1. Machine with [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed with authorized access to the cluster.
2. Admin space is deployed using instruction of [edp-install](https://github.com/epmd-edp/edp-install#admin-space) repository

### Installation
* Go to the [releases](https://github.com/epmd-edp/reconciler/releases) page of this repository, choose a version, download an archive and unzip it.

_**NOTE:** It is highly recommended to use the latest released version._

* Go to the unzipped directory and apply all files with Custom Resource Definitions

`for file in $(ls crds/*_crd.yaml); do kubectl -n <edp_deploy_project> apply -f $file; done`

_**NOTE:** <edp_deploy_project> is the namespace or project(in Opensift case) name where you deployed Admin space._