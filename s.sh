#!/bin/bash

HOST="$1"
PASS=$(op item get $HOST --fields password)

if [ -z "${PASS}" ]; then
    /usr/bin/ssh $HOST
fi

~/script/exp $PASS /usr/bin/ssh $HOST