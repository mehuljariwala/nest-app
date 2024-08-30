# Use the official Node.js image as a base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the application (if you have a build step)
# RUN npm run build

# Expose the port your application will run on
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "run", "start:prod"]