# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the application
RUN npm run build

# Install http-server to serve static files
RUN npm install -g http-server

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD [ "http-server", "build" ]