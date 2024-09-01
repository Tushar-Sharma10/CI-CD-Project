# Alpine Linux
FROM node:14-alpine

# Working directory
WORKDIR /app

# Copying the index.html file that contains style as well as script
COPY index.html /app/

#  HTTP server to serve the application globally
RUN npm install -g http-server

# Expose port 8081 because port number 8080 occupied by jenkins
EXPOSE 8081

# run the application using http-server on port 8081
CMD ["http-server", "-p", "8081"]

