#!/bin/bash

oci_runtime() {
    if command -v docker &> /dev/null; then
        return;
    fi 

    if command -v podman &> /dev/null; then
        echo 'using podman'
        shopt -s expand_aliases
        alias docker='podman'
    else
        echo 'docker or podman required.'
        exit 1;
    fi
}

oci_compose() {
    if command -v docker-compose &> /dev/null; then
        return;
    fi

    if command -v podman-compose &> /dev/null; then
        echo 'using podman-compose'
        shopt -s expand_aliases
        alias docker-compose='podman-compose'
    else
        echo 'docker or podman compose required.'
        exit 1;
    fi
}

oci_runtime
oci_compose
