#!/usr/bin/env bash

REPO_NAME="my-nodejs-starter"
REPO_URL="https://github.com/Favouroked/my-nodejs-starter.git"

LOCAL_FILEPATH="/opt/nodejs-architecture/"
FILENAME="create-node-arch"

git clone ${REPO_URL}

rm -rf ${REPO_NAME}/.git/

sudo mkdir -p ${LOCAL_FILEPATH}

sudo cp -r ${REPO_NAME}/* ${LOCAL_FILEPATH}

chmod +x ${FILENAME} && sudo cp ${FILENAME} /usr/bin/

rm -rf ${REPO_NAME}

echo "Setup is done, to use, type :=========>>>>>>> create-node-arch <project_name>"