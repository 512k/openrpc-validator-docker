<p align="center">
 <img src="https://hsto.org/webt/nc/kx/au/nckxaurura8zfd6pxx5vdh_ssw4.png" width="120" alt="logo">
</p>

# Docker image with CLI open-rpc validator

[![Build][badge_automated]][link_hub]
[![Build][badge_build]][link_hub]
[![Docker Pulls][badge_pulls]][link_hub]
[![Issues][badge_issues]][link_issues]
[![License][badge_license]][link_license]

## What is this?

Validate an [OpenRPC][open-rpc] json document using docker.

OpenRPC Specification: <https://spec.open-rpc.org/>

## Usage

```shell script
$ docker run --rm -v "$(pwd):/rootfs:ro" -w "/rootfs" 512k/openrpc-validator:0.0.1 -f ./openrpc.json
```

All supported docker tags [can be found here][link_hub_tags].

## Releasing

New versions publishing is very simple - just update dependencies version(s) in `./package.json` file and "publish" new release using repo releases page.

> Release version _(and git tag, of course)_ MUST starts with `v` prefix (eg.: `v0.0.1` or `v1.2.3-RC1`)
>
> Do not forget to update own version in `./package.json`

## License

MIT. Use anywhere for your pleasure.

[badge_automated]:https://img.shields.io/docker/cloud/automated/512k/openrpc-validator.svg?style=flat-square&maxAge=30
[badge_pulls]:https://img.shields.io/docker/pulls/512k/openrpc-validator.svg?style=flat-square&maxAge=30
[badge_issues]:https://img.shields.io/github/issues/512k/openrpc-validator-docker.svg?style=flat-square&maxAge=30
[badge_build]:https://img.shields.io/docker/cloud/build/512k/openrpc-validator.svg?style=flat-square&maxAge=30
[badge_license]:https://img.shields.io/github/license/512k/openrpc-validator-docker.svg?style=flat-square&maxAge=30
[link_hub]:https://hub.docker.com/r/512k/openrpc-validator/
[link_hub_tags]:https://hub.docker.com/r/512k/openrpc-validator/tags
[link_license]:https://github.com/512k/openrpc-validator-docker/blob/master/LICENSE
[link_issues]:https://github.com/512k/openrpc-validator-docker/issues
[open-rpc]:https://github.com/open-rpc
