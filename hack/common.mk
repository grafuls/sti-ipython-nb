SKIP_SQUASH?=0

build = hack/build.sh

ifeq ($(TARGET),rhel7)
	OS := rhel7
else
	OS := centos7
endif

script_env = \
	SKIP_SQUASH=$(SKIP_SQUASH)                      \
	VERSIONS="$(VERSIONS)"                          \
	OS=$(OS)                                        \
	VERSION=$(VERSION)                              \
	BASE_IMAGE_NAME=$(BASE_IMAGE_NAME)              \
	OPENSHIFT_NAMESPACES="$(OPENSHIFT_NAMESPACES)"

.PHONY: build
build:
	$(script_env) $(build)
