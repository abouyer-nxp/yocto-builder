#! /usr/bin/env bash

rootdir=$(realpath "$(dirname "$0")")

builderdir=${rootdir}/builder
configsdir=${rootdir}/configs
kasdir=${rootdir}/kas

export KAS_CONTAINER_IMAGE='docker.io/xroumegue/kas-xilinx:4.6'
export KAS_CONTAINER=${kasdir}/kas-container

"${builderdir}"/bin/build.sh "$@"

