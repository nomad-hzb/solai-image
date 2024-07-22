#FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:release-v1-3-1-hzb-240604
FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:sha256:98c948598f5633957b4325b0a4f85612d5a718cc86cf35be1aabb5f8f1b622df
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
