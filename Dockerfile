FROM centos:latest
MAINTAINER eLISA DPC mainetti@apc.in2p3.fr
#EXPOSE 8085
RUN yum -y update
RUN yum install -y git 
RUN yum install -y make
RUN yum install -y cmake
RUN yum install -y fftw3-devel
RUN yum install -y gsl-devel
RUN yum install -y gcc-c++

# clone git eLISA project in /eLISA dir

ENV CXX c++

#COPY contents of the Dockerfile in a specific conatiner dir (e.g. /opt/frontend)
#COPY . /workspace


RUN mkdir /workspace
WORKDIR /workspace
RUN cd /workspace
#RUN git clone git@gitlab.in2p3.fr:mainetti/LISACode.git: -b tested --single-branch
#BUILD the eLISA code 
#RUN cd /workspace/LISACode
#RUN mkdir /workspace/LISACode/build
#RUN cd /workspace/LISACode/build

#RUN cmake ..
#RUN make
#RUN make install


