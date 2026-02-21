# Use Node.js 20 Alpine (lightweight version)
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the actual application code
COPY . .

# Set the environment variable for the port (optional, but good practice)
ENV PORT=3001

# Expose port 3001 to the outside world
EXPOSE 3001

# Start the application
CMD ["node", "index.js"]
