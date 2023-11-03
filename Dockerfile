# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Build the Angular application
RUN npm run build

# Expose the port the app runs on
EXPOSE 4200

# Define the command to start the Angular app
CMD ["npm", "start"]