FROM nodered/node-red:latest
USER root
RUN apk add py3-pip py3-numpy py3-pandas
RUN apk add --update --no-cache python3  && ln -sf python3 /usr/bin/python
USER node-red
