# Use an official Node.js runtime as a base image
# Build stage
FROM node:25 AS build_stage
WORKDIR /build
COPY package.json ./
RUN npm install
COPY . .

# RUNTIME stage
# use distroless image for lighrweight and secure runtime as it does not include package manager, shell, or other unnecessary tools
FROM gcr.io/distroless/nodejs20-debian12
WORKDIR /app
COPY --from=build_stage /build/app.js ./app.js
COPY --from=build_stage /build/node_modules ./node_modules
EXPOSE 3000
CMD ["app.js"]

## When we use distoless image default user is root as there is no shell.