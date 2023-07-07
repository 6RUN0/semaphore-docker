FROM semaphoreui/semaphore:latest

USER root
ENV ANSIBLE_INVENTORY_CACHE True
ENV ANSIBLE_CACHE_PLUGIN community.general.redis
ENV ANSIBLE_INVENTORY_CACHE_PLUGIN community.general.redis
ENV ANSIBLE_CACHE_PLUGIN_CONNECTION localhost:6379:0
# Install additon package
RUN \
    set -eux; \
    apk add --no-cache \
        py3-redis \
        ;

USER semaphore
