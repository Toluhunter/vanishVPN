FROM node:lts-slim

RUN apt update -y

RUN apt install unzip curl -y

WORKDIR /app

COPY setup-aws-cli.sh .

RUN chmod +x ./setup-aws-cli.sh && ./setup-aws-cli.sh

RUN npm -g install typescript

RUN npm install -g aws-cdk

CMD [ "bash" ]