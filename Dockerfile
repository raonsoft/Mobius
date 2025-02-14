# 1. Base image: Use Node.js 18 LTS (Alpine for minimal size)
FROM node:18-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the local Mobius source code (cloned on the host)
COPY . .

# 4. Install only production dependencies
RUN npm install --omit=dev

# 5. Expose the application's port (Modify if necessary)
EXPOSE 7579

# 6. Define the startup command
CMD ["node", "mobius.js"]
