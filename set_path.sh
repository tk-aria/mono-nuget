#!/bin/sh
CALLBACK_DIR=$(cd ./; pwd)
SCRIPT_DIR=$(cd $(dirname ); pwd)
ARGS=$@;

if test ${#} -lt 1 ; then # must need `1` arg.
    echo 'export PATH=$PATH:'"${CALLBACK_DIR}" >>~/.bash_profile
else
    for arg in ${ARGS[@]}; do
        echo 'export PATH=$PATH:'"${arg}" >>~/.bash_profile
    done
fi

exit 0
