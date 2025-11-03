#!/bin/bash

# Status Codes
SUCCESS=0
INVALID_ARGUMENT=22

while getopts "hv:" opt; do
        case $opt in
                h)
                        echo "Usage: $0 [-h]"
                        exit ${SUCCESS}
                        ;;
                \?)
                        exit ${INVALID_ARGUMENT}
        esac
done

shift $((OPTIND - 1))

