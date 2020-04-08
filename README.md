# EDP Component Operator

EDP component operator is an extension for K8S/OpenShift that is used for managing the EDP CI/CD components in the Admin Console tool.

At the moment, it is delivered as a Custom Resource Definition without any controllers.
Some of EDP components are predefined and installed automatically. 

Additionally, there is the ability to use the custom components and afterwards consume the respective component data from Admin Console. 

The basic Custom Resource for EDP Component cab be as follows:
```yaml
apiVersion: v1.edp.epam.com/v1alpha1
kind: EDPComponent
metadata:
  name: example-edpcomponent
spec:
  type: jenkins
  url: https://example-jenkins
  icon: base64encoded_icon
```

_**NOTE:** Pay attention to the icon field that should be a base64 encoded._

As soon as the CR is created, it will appear on the main page of the Admin Console tool:

![admin-console](readme-resource/admin_console_main_page.png "admin-console")

# How to Install Operator

EDP installation can be applied on two container orchestration platforms: OpenShift and Kubernetes.

_**NOTE:** Installation of operators is platform-independent, that is why there is a unified instruction for deploying._

### Prerequisites
1. Linux machine or Windows Subsystem for Linux instance with [Helm 3](https://helm.sh/docs/intro/install/) installed;
2. Cluster admin access to the cluster;
3. EDP project/namespace is deployed by following one of the instructions: [edp-install-openshift](https://github.com/epmd-edp/edp-install/blob/master/documentation/openshift_install_edp.md#admin-space) or [edp-install-kubernetes](https://github.com/epmd-edp/edp-install/blob/master/documentation/kubernetes_install_edp.md#admin-space).

### Installation
* Go to the [releases](https://github.com/epmd-edp/edp-component-operator/releases) page of this repository, choose a version, download an archive and unzip it;

_**NOTE:** It is highly recommended to use the latest released version._

* Go to the unzipped directory/deploy-templates/ and deploy operator:
```yaml
helm install edp-component-operator 
```

### Local Development
In order to develop the operator, first set up a local environment. For details, please refer to the [Local Development](documentation/local_development.md) page.