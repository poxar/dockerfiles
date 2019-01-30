FROM circleci/python:3

ENV OC_VERSION=v3.11.0 \
    OC_TAG_SHA=0cbc58b

RUN sudo apt update && sudo apt upgrade && sudo apt install -y gettext \
 && curl -sLo /tmp/oc.tar.gz https://github.com/openshift/origin/releases/download/${OC_VERSION}/openshift-origin-client-tools-${OC_VERSION}-${OC_TAG_SHA}-linux-64bit.tar.gz \
 && tar xzvf /tmp/oc.tar.gz -C /tmp/ \
 && sudo mv /tmp/openshift-origin-client-tools-${OC_VERSION}-${OC_TAG_SHA}-linux-64bit/oc /usr/local/bin/ \
 && sudo chown root:root /usr/local/bin/oc \
 && sudo chmod 0555 /usr/local/bin/oc \
 && rm -rf /tmp/oc.tar.gz /tmp/openshift-origin-client-tools-${OC_VERSION}-${OC_TAG_SHA}-linux-64bit
