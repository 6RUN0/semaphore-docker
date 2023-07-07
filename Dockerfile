FROM semaphoreui/semaphore:latest

# Install additon package
RUN \
    set -eux; \
    apk add --no-cache \
        docker-py \
        py3-redis \
        ; \
