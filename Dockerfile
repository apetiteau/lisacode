FROM gabrimaine/elisadpc:latest
MAINTAINER eLISA DPC mainetti@apc.in2p3.fr

<<<<<<< HEAD
RUN git config --global http.postBuffer 524288000
RUN git config --global --add core.compression -1
RUN yum -y install numpy 
RUN git clone https://gitlab.in2p3.fr/elisadpc/LISACode.git -b master --single-branch
RUN cd /workspace/LISACode
RUN mkdir /workspace/LISACode/build
RUN cd /workspace/LISACode/build &&  cmake .. && make &&  make install 
RUN mkdir /LISACode_workspace && cd /workspace/LISACode && sh setWorkDir.sh /LISACode_workspace && cp -fr /workspace/LISACode/build/bin/* /LISACode_workspace/bin/
=======


WORKDIR /workspace
RUN cd /workspace
RUN pwd

RUN git config --global http.postBuffer 524288000
RUN git config --global --add core.compression -1
RUN git clone  https://gitlab.in2p3.fr/elisadpc/LISACode.git -b tested --single-branch
RUN cd /workspace/LISACode && ls -l && sh install.sh -c /LISACode_Cfg
RUN cd /workspace && rm -fr LISACode
<<<<<<< HEAD
#RUN mkdir /workspace/LISACode/build
#RUN cd /workspace/LISACode/build &&  cmake .. && make &&  make install 
#RUN mkdir /LISACode_workspace && cd /workspace/LISACode && sh setWorkDir.sh /LISACode_workspace && cp -fr /workspace/LISACode/build/bin/* /LISACode_workspace/bin/
>>>>>>> remotes/origin/develop
=======
>>>>>>> remotes/origin/develop

