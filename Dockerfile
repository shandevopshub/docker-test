FROM node:latest
RUN mkdir -p /src/app
COPY . /src/app
WORKDIR /src/app
RUN mkdir -p /opt
RUN mkdir -p /opt/yarn
ADD latest.tar.gz /opt/yarn       
ENV PATH "$PATH:/opt/yarn/bin"
EXPOSE 4000
RUN  yarn 
CMD ["yarn", "start"]
