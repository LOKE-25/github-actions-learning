# FROM node:18
# WORKDIR /app
# COPY package*.json ./
# RUN npm install 
# COPY . .
# EXPOSE 3000
# CMD ["node","app.js"]
# 1️⃣ Use official Node.js base image
FROM node:18

# 2️⃣ Create and set the working directory inside container
WORKDIR /app

# 3️⃣ Copy only package.json first (for caching)
COPY package*.json ./

# 4️⃣ Install dependencies (if any)
RUN npm install

# 5️⃣ Copy all project files into container
COPY . .

# 6️⃣ Expose the app port (same as app.js)
EXPOSE 3000

# 7️⃣ Run using package.json script

CMD ["node","app.js"]
