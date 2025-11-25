#!/bin/bash

echo "Cloning Kronos repo..."
git clone https://github.com/neil323423/Kronos-V1
cd Kronos-V1 || exit

echo "Checking for Node.js..."
if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing..."
    sudo apt update
    sudo apt install -y nodejs npm
else
    echo "Node.js found!"
fi

echo "Updating npm..."
npm install -g npm

echo "Installing dependencies..."
npm install express --save

echo "All done! Running Kronos..."
node index.js
