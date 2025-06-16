FROM node:18
WORKDIR /app
COPY assignmentpart2/package.json . 
COPY package-lock.json .  # optional
COPY . .                  # copy all other source files
RUN npm install
CMD ["npm", "start"]

