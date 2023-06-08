ARG BASE_IMG_NAME
FROM ${BASE_IMG_NAME}
WORKDIR /usr/monsoon/monsoon-data-accessor
COPY package.json ./
EXPOSE 3000
RUN ["echo", "BASE_IMG_NAME"]
RUN ["node", "-v"]
RUN ["printenv"]
ADD ./src /usr/monsoon/monsoon-data-accessor/src
RUN npm install --production
CMD ["node", "src/server.js"]
