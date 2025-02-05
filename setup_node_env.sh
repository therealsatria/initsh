#!/bin/bash

# Update package list and install dependencies
echo "Updating package list and installing dependencies..."
sudo apt update && sudo apt upgrade -y

# Install Node.js (LTS version)
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
# Install npm
echo "Installing npm..."
sudo apt install -y npm

# Verify Node.js and npm installation
echo "Node.js version:"
node -v
echo "npm version:"
npm -v

# Install Yarn globally
echo "Installing Yarn..."
sudo npm install -g yarn

# Verify Yarn installation
echo "Yarn version:"
yarn -v

# Install npx (comes with npm by default)
echo "Verifying npx installation..."
npx -v

# Install TypeScript globally
echo "Installing TypeScript..."
sudo npm install -g typescript ts-node

# Verify TypeScript installation
echo "TypeScript version:"
tsc -v

# Install Next.js globally (optional, as it's typically project-specific)
echo "Installing Next.js CLI globally..."
sudo npm install -g next

# Create a new Next.js project with TypeScript support
echo "Creating a new Next.js project with TypeScript..."
PROJECT_NAME="my-nextjs-app"
npx create-next-app@latest $PROJECT_NAME --typescript

# Navigate to the project directory
cd $PROJECT_NAME

# Install project dependencies
echo "Installing project dependencies..."
yarn install

# Start the development server
echo "Starting the Next.js development server..."
yarn dev