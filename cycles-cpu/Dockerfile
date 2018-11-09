FROM centos:centos7
MAINTAINER Brian Sundman <bsundman@gmail.com>

# Perform updates, install depends, clear yum cache
RUN yum -y update; yum -y install epel-release; yum -y install git cmake freeglut-devel glew-devel boost-devel OpenImageIO-devel pugixml-devel openexr-devel opencl-headers ocl-icd-devel; yum -y group install "Development Tools";  yum clean all; rm -rf /var/cache/yum

# Cycles binary
WORKDIR /opt
RUN git clone -b v1.9.1 git://git.blender.org/cycles.git cycles-v1.9.1 && cd cycles* && make BUILD_CMAKE_ARGS="-D WITH_CYCLES_STANDALONE_GUI=OFF WITH_CUDA_DYNLOAD=OFF" && make install-release

# Remove dev tools
RUN yum -y group remove "Development Tools"; yum -y remove git cmake; yum autoremove; yum clean all; rm -rf /var/cache/yum

# Run script
COPY run.sh /

ENTRYPOINT ["/run.sh"]