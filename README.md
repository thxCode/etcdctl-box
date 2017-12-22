# etcdctl Box

Storing etcd 2.x client ctl by Alpine.

[![](https://img.shields.io/badge/Github-thxcode/etcdctl--box-orange.svg)](https://github.com/thxcode/etcdctl-box)&nbsp;[![](https://img.shields.io/badge/Docker_Hub-maiwj/etcdctl--box-orange.svg)](https://hub.docker.com/r/maiwj/etcdctl-box)&nbsp;[![](https://img.shields.io/docker/build/maiwj/etcdctl-box.svg)](https://hub.docker.com/r/maiwj/etcdctl-box)&nbsp;[![](https://img.shields.io/docker/pulls/maiwj/etcdctl-box.svg)](https://store.docker.com/community/images/maiwj/etcdctl-box)&nbsp;[![](https://img.shields.io/github/license/thxcode/etcdctl-box.svg)](https://github.com/thxcode/etcdctl-box)

[![](https://images.microbadger.com/badges/image/maiwj/etcdctl-box.svg)](https://microbadger.com/images/maiwj/etcdctl-box)&nbsp;[![](https://images.microbadger.com/badges/version/maiwj/etcdctl-box.svg)](http://microbadger.com/images/maiwj/etcdctl-box)&nbsp;[![](https://images.microbadger.com/badges/commit/maiwj/etcdctl-box.svg)](http://microbadger.com/images/maiwj/etcdctl-box.svg)

## References

### etcdctl List

- [v2.3.7](https://github.com/coreos/etcd/releases/tag/v2.3.7)

## How to use this image

### Start an instance

To start a container, use the following:

``` bash
$ docker run -it --name test-eb maiwj/etcdctl-box
```

### Get list from Kubernetes Pod

``` bash
$ kubectl run -it --image maiwj/etcdctl-box:latest test bash

/# ls -al /usr/local/bin | grep etcdctl

```

## License

- etcd is released under the [Apache License 2.0](https://github.com/coreos/etcd/blob/master/LICENSE)
- This image is released under the [MIT License](LICENSE)
