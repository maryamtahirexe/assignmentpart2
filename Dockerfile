# Use a base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port (e.g. 3000)
EXPOSE 3001

# Start the app
CMD ["npm", "start"]
