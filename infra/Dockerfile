FROM node:lts-slim

# Install System dependencies
RUN apt update -y
RUN apt install unzip curl less -y

WORKDIR /app

# Setup AWS CLI
COPY setup-aws-cli.sh .
RUN chmod +x ./setup-aws-cli.sh && bash ./setup-aws-cli.sh

# Setup AWS CDK
RUN npm -g install typescript
RUN npm install -g aws-cdk

# Install dependencies
COPY package.json .
RUN yarn install

# Copy source code
COPY ./src .

EXPOSE 3000

CMD [ "yarn", "dev" ]