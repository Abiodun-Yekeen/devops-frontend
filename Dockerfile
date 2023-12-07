
# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/frontend

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
#RUN npm install
RUN npm i

# Copy the frontend source code to the container
COPY . .


# Build the frontend application
RUN npm run build

# Use Nginx as the web server
FROM nginx:latest

# Copy the built files from the previous stage to Nginx
COPY --from=build /usr/src/frontend/build /usr/share/nginx/html

# Expose the port the app runs on (usually 80)
EXPOSE 80

# Default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]








# FROM node:21.2.0-alpine

# ENV NODE_ENV = production



# WORKDIR /usr/src/frontend

# COPY  package.json ./

# COPY  package-lock.json ./

# # COPY  public ./public
# # COPY  src ./src


# # COPY ./frontend/package.json ./
# # COPY ./frontend/package-lock.json ./
# # COPY ./frontend/public ./public
# # COPY ./frontend/src ./src

# RUN npm install
# RUN npm run build



# # RUN npm install

# COPY . .


# # RUN npm run build

#  EXPOSE 8080



# CMD [ "npm", "start" ]