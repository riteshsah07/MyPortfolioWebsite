# Use official Node.js LTS image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy all files
COPY . .

# Install dependencies
RUN npm install express cors axios

# Expose port
EXPOSE 5000

# Start the server
CMD ["node", "server.js"]
