# Use the official Nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 (default HTTP port for Nginx)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]


############################################

# copy all the webpage files
# Copy . .


# set port environment variable
# ENV PORT=9000

# expose the port so our computer can access it
# EXPOSE 9000
