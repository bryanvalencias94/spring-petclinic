FROM ubuntu:20.04

# Install Java 17
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk

# # Install Docker
# RUN apt-get update && \
#     apt-get install -y apt-transport-https ca-certificates curl software-properties-common && \
#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
#     add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
#     apt-get update && \
#     apt-get install -y docker.io

# Verify installations
RUN java -version
# RUN docker --version
