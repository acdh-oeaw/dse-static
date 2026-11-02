#!/bin/bash

echo "fetching transkriptions from data_repo"
rm -rf data/
git clone --depth=1 --branch main --single-branch https://github.com/acdh-oeaw/dse-static-data.git
dataHash=$(git -C ./dse-static-data rev-parse HEAD)
echo -n "${dataHash}" > ./datahash.txt
mv ./dse-static-data/data .
rm -rf ./dse-static-data
echo "fetch imprint"
./shellscripts/dl_imprint.sh


