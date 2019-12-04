# How to Install Operator

EDP installation can be applied on two container orchestration platforms: OpenShift and Kubernetes.

_**NOTE:** Installation of operators is platform-independent, that is why there is a unified instruction for deploying._


### Prerequisites
1. Machine with [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed with an authorized access to the cluster;
2. Admin space is deployed by following the repository instruction: [edp-install](https://github.com/epmd-edp/edp-install#admin-space).

### Installation
* Go to the [releases](https://github.com/epmd-edp/reconciler/releases) page of this repository, choose a version, download an archive and unzip it;

_**NOTE:** It is highly recommended to use the latest released version._

* Go to the unzipped directory and apply all files with the Custom Resource Definitions resource:

`for file in $(ls crds/*_crd.yaml); do kubectl -n <edp_deploy_project> apply -f $file; done`

_**NOTE**: The <edp_deploy_project> is a namespace or a project name (in case of OpenSift) where the Admin Space is deployed._