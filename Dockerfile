# Dockerfile
# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# # Copy package.json and package-lock.json
COPY package*.json ./

# # Install dependencies
RUN npm install

# # Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
