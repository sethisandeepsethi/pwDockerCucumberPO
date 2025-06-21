# Use the Playwright image as the base image
FROM mcr.microsoft.com/playwright:v1.53.1-noble
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy your application code into the container
COPY . /app
 
# Install dependencies
RUN apt-get update
RUN npm install
 
# Command to run your Playwright tests
CMD ["npm", "test"]