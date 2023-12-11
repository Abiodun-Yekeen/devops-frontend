

# FROM node:latest AS build
# WORKDIR /app
# COPY package.json package-lock.json ./
# COPY build ./
# # RUN npm install
# COPY . .
# # RUN npm run build

# # Stage 2: Serve the app using Nginx
# FROM nginx:latest
# COPY --from=build /app/build /usr/share/nginx/html
# # Optionally, copy custom Nginx configuration
# #  COPY ./default.conf /etc/nginx/conf.d/
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]





# # Use an official Node.js runtime as the base image
# FROM node:latest as builder

# # Set the working directory in the container
# WORKDIR /app

# # Copy package.json and package-lock.json to the working directory
# COPY package*.json ./
# COPY public ./public
# COPY src ./src

# # Install the application dependencies
# RUN npm install

# # Copy the rest of the application files
# COPY . .

# # Build the frontend application
# RUN npm run build

# # Use Nginx as the web server
# FROM nginx

# # Copy the built files from the previous stage to Nginx
# COPY --from=builder /app/build /usr/share/nginx/html

# # Expose the port the app runs on (usually 80)
# EXPOSE 80

# # Default command to start Nginx
# CMD ["nginx", "-g", "daemon off;"]





# # Use an official Node.js runtime as the base image
# FROM node:latest 

# # Set the working directory in the container
# WORKDIR /app

# # Copy package.json and package-lock.json to the working directory
# COPY package*.json ./
# COPY  public ./public
#  COPY  src ./src

# # Install the application dependencies
# #RUN npm install
# RUN npm install

# # Build the frontend application
# RUN npm run build

# # Copy the frontend source code to the container
# COPY . .




# # Use Nginx as the web server
# # FROM nginx

# # Copy the built files from the previous stage to Nginx
# COPY --from=build /app/build /usr/share/nginx/html

# # Expose the port the app runs on (usually 80)
# EXPOSE 80


# # Default command to start Nginx
# CMD ["nginx", "-g", "daemon off;"]








FROM node:14

WORKDIR /usr/src/app

COPY  package.json ./

COPY  package-lock.json ./

# COPY  public ./public
# COPY  src ./src


# COPY ./frontend/package.json ./
# COPY ./frontend/package-lock.json ./
# COPY ./frontend/public ./public
# COPY ./frontend/src ./src

RUN npm i

# RUN npm install

COPY . .


#  RUN npm run build

 EXPOSE 80



CMD [ "npm", "start" ]