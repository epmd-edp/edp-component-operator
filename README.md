|![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Warning.svg/156px-Warning.svg.png) | This project is moved to [https://github.com/epam/edp-component-operator](https://github.com/epam/edp-component-operator)
|---|---|

# EDP Component Operator

Get acquainted with the EDP Component Operator and the installation process as well as the local development.

## Overview

EDP Component Operator is an extension for K8S/OpenShift that is used for managing the EDP CI/CD components in the Admin Console tool.
At the moment, it is delivered as a Custom Resource Definition without any controllers. 
Some of EDP components are predefined and installed automatically. 

_**NOTE:** Operator is platform-independent, that is why there is a unified instruction for deploying._

Additionally, there is the ability to use the custom components and afterwards consume the respective component data from Admin Console. 

The basic Custom Resource for EDP Component can be as follows:
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

## Prerequisites
1. Linux machine or Windows Subsystem for Linux instance with [Helm 3](https://helm.sh/docs/intro/install/) installed;
2. Cluster admin access to the cluster;
3. EDP project/namespace is deployed by following one of the instructions: [edp-install-openshift](https://github.com/epmd-edp/edp-install/blob/master/documentation/openshift_install_edp.md#edp-project) or [edp-install-kubernetes](https://github.com/epmd-edp/edp-install/blob/master/documentation/kubernetes_install_edp.md#edp-namespace).

## Installation
In order to install the EDP Component Operator, follow the steps below:

1. To add the Helm EPAMEDP Charts for local client, run "helm repo add":
     ```bash
     helm repo add epamedp https://chartmuseum.demo.edp-epam.com/
     ```
2. Choose available Helm chart version:
     ```bash
     helm search repo epamedp/edp-component-operator
     NAME                            CHART VERSION   APP VERSION     DESCRIPTION
     epamedp/edp-component-operator  0.2.0    
     ```
  
    _**NOTE:** It is highly recommended to use the latest released version._

3. Deploy operator:

Install operator in the <edp_cicd_project> namespace with the helm command; find below the installation command example:
```bash
helm install edp-component-operator epamedp/edp-component-operator --version <chart_version>
```

## Local Development
In order to develop the operator, first set up a local environment. For details, please refer to the [Local Development](documentation/local_development.md) page.
