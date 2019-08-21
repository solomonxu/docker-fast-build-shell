#!/usr/bin/bash

## include shells
. ./common/logger.sh
. ./common/subtask.sh

## test: 
## enable trusting on this local host by remote hosts
## subtask called by parent shell
function test_subtask_remote_trust()
{
    logger_info "TEST: call subtask.sh ${SUBTASK_REMOTE_TRUST}"
    ./common/subtask.sh "${SUBTASK_REMOTE_TRUST}" "$@";
}

logger_info "TEST: subtask.sh"

## get host
_host=192.168.1.11
if [ $# -ge 1 ]; then
    _host=$1
fi

## test trust by remote hosts
#if [ $# -le 0 ]; then
#    test_ssh_remote_trust;
#fi

## test: subtask of enable trust
test_subtask_remote_trust "1" "192.168.1.11,root,Wise2c2019,22"
