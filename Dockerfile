FROM semaphoreui/semaphore:latest

USER root
# Install additon package
RUN \
    set -eux; \
    apk add --no-cache \
        py3-redis \
        ;

USER semaphore
