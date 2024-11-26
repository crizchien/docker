#!/bin/bash

. "/root/.nvm/nvm.sh"
. "/root/.nvm/bash_completion"

case ${NODE_VERSION} in
    node12)
        nvm alias default 12
        ;;
    node14)
        nvm alias default 14
        ;;
    node16)
        nvm alias default 16
        ;;
    node18)
        nvm alias default 18
        ;;
    node20)
        nvm alias default 20
        ;;
    node22)
        nvm alias default 22
        ;;
    *)
        echo -e "Use the environment to set the default NodeJS version on the system."
        echo -e ""
        echo -e "Options:"
        echo -e "  node12    Set default NodeJS version to Node 12"
        echo -e "  node14    Set default NodeJS version to Node 14"
        echo -e "  node16    Set default NodeJS version to Node 16"
        echo -e "  node18    Set default NodeJS version to Node 18"
        echo -e "  node20    Set default NodeJS version to Node 20"
        echo -e "  node22    Set default NodeJS version to Node 22"
        echo -e ""
        echo -e "Example, to set Node 16 as the default version:"
        echo -e "  docker run -dit -e NODE_VERSION=node16 --name npm crizchien/ubuntu-npm:latest"
        exit 1
        ;;
esac
   
bash
