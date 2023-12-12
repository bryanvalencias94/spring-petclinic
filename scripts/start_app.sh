#!/bin/bash

docker pull bryanvalencia94/petclinic:{CODEBUILD_RESOLVED_SOURCE_VERSION}
docker run -d -p 8080:8080 bryanvalencia94/petclinic:{CODEBUILD_RESOLVED_SOURCE_VERSION}
