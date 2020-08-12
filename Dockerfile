ARG BASE=latest
FROM flokkr/base:37

#async profiler
RUN yum install -y unzip
RUN mkdir /opt/java-async-profiler && \
    cd /opt/java-async-profiler && \
    wget https://github.com/jvm-profiling-tools/async-profiler/releases/download/v1.7.1/async-profiler-1.7.1-linux-x64.tar.gz && \
    tar zvxf *.tar.gz && \
    rm *.tar.gz
