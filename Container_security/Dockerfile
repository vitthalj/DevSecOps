# Use an official Node.js runtime as a base image
# Build stage
FROM node:25 AS build_stage
WORKDIR /build
COPY package.json ./
RUN npm install
COPY . .

# RUNTIME stage
FROM node:25-slim
WORKDIR /app
RUN groupadd -r appuser && useradd -r -g appuser appuser
COPY --from=build_stage /build/app.js ./app.js
COPY --from=build_stage /build/node_modules ./node_modules
USER appuser
EXPOSE 3000
CMD ["node", "app.js"]