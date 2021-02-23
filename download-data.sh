#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m';
NC='\033[0m'

function package_exists() {
    dpkg -s "$1" &> /dev/null
    return $?
}

if ! package_exists git; then
     echo -e "Error: ${RED}Package ${NC}git${RED} not installed. Exiting.${NC}"
     exit 1;
fi

echo -e "${GREEN}Cloning ${NC}otland/forgottenserver ${GREEN}into a temporary directory...${NC}"
git clone https://github.com/otland/forgottenserver.git .tmp

echo -e "${GREEN}Copying the ${NC}data ${GREEN}folder...${NC}"
cp -r .tmp/data .

echo -e "${GREEN}Cleaning up...${NC}"
rm -rf .tmp

echo -e "${GREEN}Done.${NC}"
