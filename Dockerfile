# Base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
COPY myapp/src ./src
RUN npm install

# Copy the app source code
COPY . .

# Build the app
RUN npm run build

# Expose the desired port (e.g., 3000 for React)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
