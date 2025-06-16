FROM node:18
WORKDIR /app
COPY package.json .       # ✅ You’re already inside app/
COPY package-lock.json .  # optional
COPY . .                  # copy all other source files
RUN npm install
CMD ["npm", "start"]

