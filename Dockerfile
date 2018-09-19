# Base image
FROM ubuntu

# Base configuration
#RUN apt-get update && apt-get upgrade
ENV myCustomEnvVar="This is a demo" \
    myOtherEnvVar="This is a demo2"

