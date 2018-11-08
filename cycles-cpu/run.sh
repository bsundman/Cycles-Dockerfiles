#!/bin/bash

#USER-Defind params
if [[ -z "$PARAMS" ]]; then
    echo "Please set env-variable 'PARAMS'."
    exit 1
fi

/opt/cycles-v1.9.1/bin-opt/bin/cycles ${PARAMS}
