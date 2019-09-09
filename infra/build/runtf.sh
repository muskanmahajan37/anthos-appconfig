#!/usr/bin/env bash

# -e TF_LOG=TRACE \
docker run -it --rm --network host  \
  -v /Users/joseret/.config/gcloud:/root/.config/gcloud  \
  -v $(pwd):/root/tf \
  -v /Users/joseret/.ssh:/root/.ssh  -w /root/tf \
  gcr.io/joseret-bootstrap-sce-trax-1/sce-trax-terraform:v11 $1 $2 $3