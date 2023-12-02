# Use an official Node.js runtime as a base image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies (this step is less likely to change)
RUN npm install

# Copy only the necessary files for building (this step is more likely to change)
COPY . .

# Build the application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
