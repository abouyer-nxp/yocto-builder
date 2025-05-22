#! /usr/bin/env bash

rootdir=$(realpath "$(dirname "$0")")

builderdir=${rootdir}/builder
configsdir=${rootdir}/configs
kasdir=${rootdir}/kas

export KAS_CONTAINER_IMAGE='docker.io/xroumegue/kas-xilinx:4.6'
export KAS_CONTAINER=${kasdir}/kas-container

gitconfig_file=${HOME}/.gitconfig

if [ -e "${gitconfig_file}" ];
then
  export GITCONFIG_FILE=${gitconfig_file}
fi

"${builderdir}"/bin/build.sh "$@"

