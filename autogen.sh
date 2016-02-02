#!/bin/bash

set -euo pipefail

autotools() {
    autoreconf -i -Wall
}

clean() {
    git clean -fdx
    autotools
}

full() {
    ./configure "${@}"
    make
    make distcheck
}

run_action() {
    local action="${1}"
    shift

    local configure_args=(
        --prefix=/usr
        --sysconfdir=/etc
    )

    case "${action}" in
        configure-full|cf)
            ./configure "${configure_args[@]}" "${@}"
            ;;
        full)
            full "${configure_args[@]}" "${@}"
            ;;
    esac
}

main() {
    autotools

    [[ "${#}" == 0 ]] || run_action "${@}"
}

main "${@}"
