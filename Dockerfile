FROM cypress/base
WORKDIR /project
ENV YARN_CACHE_FOLDER /var/cache/yarn
COPY package.json yarn.lock /project/
RUN cd /project/ && yarn
# Make ENTRYPOINT last because it busts cache
# https://github.com/moby/moby/issues/37643
ENTRYPOINT []
