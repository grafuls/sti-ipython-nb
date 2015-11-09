iPython Notebook Docker images
====================

Based on the [sti-python](https://github.com/openshift/sti-python) repo,
this repository contains the source for building the iPython
Notebook application as a reproducible Docker image using
[source-to-image](https://github.com/openshift/source-to-image).
Users can choose between RHEL and CentOS based builder images.
The resulting image can be run using [Docker](http://docker.io).


Versions
---------------
Python versions currently provided are:
* python-2.7

RHEL versions currently supported are:
* RHEL7

CentOS versions currently supported are:
* CentOS7


Installation
---------------
To build a iPython Notebook image, choose either the CentOS or RHEL based image:
*  **RHEL based image**

    To build a RHEL based Python image, you need to run the build on a properly
    subscribed RHEL machine.

    ```
    $ git clone https://github.com/grafuls/sti-ipython-nb.git
    $ cd sti-ipython-nb
    $ make build TARGET=rhel7
    ```

*  **CentOS based image**

    To build a iPython image from scratch run:

    ```
    $ git clone https://github.com/grafuls/sti-ipython-nb.git
    $ cd sti-ipython-nb
    $ make build
    ```


Usage
---------------------------------

For information about usage of Dockerfile for iPython,
see [usage documentation](2.7/README.md).


Repository organization
------------------------
* **`<python-version>`**

    Dockerfile and scripts to build container images from.

* **`hack/`**

    Folder containing scripts which are responsible for build and test actions performed by the `Makefile`.


Image name structure
------------------------
##### Structure: openshift/1-2-3

1. Platform name (lowercase) - ipython
2. Platform version(without dots) - 27
3. Base builder image - centos7/rhel7

Examples: `openshift/ipython-27-centos7`, `openshift/ipython-27-rhel7`

