Python Docker images
====================

This repository contains the source for building various versions of
the Python application as a reproducible Docker image using
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
To build a Python image, choose either the CentOS or RHEL based image:
*  **RHEL based image**

    To build a RHEL based Python image, you need to run the build on a properly
    subscribed RHEL machine.

    ```
    $ git clone https://github.com/openshift/sti-python.git
    $ cd sti-python
    $ make build TARGET=rhel7 VERSION=2.7
    ```

*  **CentOS based image**

    This image is available on DockerHub. To download it run:

    ```
    $ docker pull openshift/python-27-centos7
    ```

    To build a Python image from scratch run:

    ```
    $ git clone https://github.com/openshift/sti-python.git
    $ cd sti-python
    $ make build VERSION=2.7
    ```

**Notice: By omitting the `VERSION` parameter, the build/test action will be performed
on all provided versions of Python.**


Usage
---------------------------------

For information about usage of Dockerfile for Python 2.7,
see [usage documentation](2.7/README.md).


Test
---------------------
This repository also provides a [S2I](https://github.com/openshift/source-to-image) test framework,
which launches tests to check functionality of a simple Python application built on top of the sti-python image.

Users can choose between testing a Python test application based on a RHEL or CentOS image.

*  **RHEL based image**

    To test a RHEL7-based Python-2.7 image, you need to run the test on a properly subscribed RHEL machine.

    ```
    $ cd sti-python
    $ make test TARGET=rhel7 VERSION=2.7
    ```

*  **CentOS based image**

    ```
    $ cd sti-python
    $ make test VERSION=2.7
    ```


Repository organization
------------------------
* **`<python-version>`**

    Dockerfile and scripts to build container images from.

* **`hack/`**

    Folder containing scripts which are responsible for build and test actions performed by the `Makefile`.


Image name structure
------------------------
##### Structure: openshift/1-2-3

1. Platform name (lowercase) - python
2. Platform version(without dots) - 27
3. Base builder image - centos7/rhel7

Examples: `openshift/python-27-centos7`, `openshift/python-27-rhel7`

