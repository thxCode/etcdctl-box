FROM alpine:3.6

MAINTAINER Frank Mai <frank@rancher.com>

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL \
	io.github.thxcode.build-date=$BUILD_DATE \
	io.github.thxcode.name="etcdctl-box" \
	io.github.thxcode.description="Storing RabbitMQ plugins by Alpine." \
	io.github.thxcode.url="https://github.com/thxcode/etcdctl-box" \
	io.github.thxcode.vcs-type="Git" \
	io.github.thxcode.vcs-ref=$VCS_REF \
	io.github.thxcode.vcs-url="https://github.com/thxcode/etcdctl-box.git" \
	io.github.thxcode.vendor="Rancher Labs, Inc" \
	io.github.thxcode.version=$VERSION \
	io.github.thxcode.schema-version="1.0" \
	io.github.thxcode.license="MIT" \
	io.github.thxcode.docker.dockerfile="/Dockerfile"

RUN apk add --update --no-cache \
	dumb-init bash sudo \
	&& rm -fr /var/cache/apk/* \
	&& mkdir /tmp/tars

ENV DEFAULT_VERSION=v2.3.7 \
	IS_BOX=true

COPY etcdctl_mgr /usr/local/bin

ADD [ "https://github.com/coreos/etcd/releases/download/v2.3.7/etcd-v2.3.7-linux-amd64.tar.gz", "/tmp/tars/" ]

RUN cd /tmp/tars \
	&& tar xzf etcd-v2.3.7-linux-amd64.tar.gz \
	&& cp etcd-v2.3.7-linux-amd64/etcdctl /usr/local/bin/etcdctl-v2.3.7 \
	&& ln -s /usr/local/bin/etcdctl-${DEFAULT_VERSION} /usr/local/bin/etcdctl \
	&& chmod a+x /usr/local/bin/etcdctl_mgr

RUN rm -rf /tmp/tars

CMD ["/bin/bash"]