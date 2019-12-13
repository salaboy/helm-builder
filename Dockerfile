FROM gcr.io/jenkinsxio/builder-baseimage:0.0.34

WORKDIR /home/jenkins

RUN curl -L https://get.helm.sh/helm-v3.0.1-linux-amd64.tar.gz | tar xzv && \ 
  mv linux-amd64/helm /usr/bin/helm3 && \ 
  rm -rf linux-amd64
  
CMD ["helm3","version"]