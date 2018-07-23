################################################################################
##    Dockerfile to build minimal Matplotlib image with Python3 and Numpy     ##
################################################################################
FROM alpine:3.8

MAINTAINER Janos Czentye <czentye@tmit.bme.hu>

ENV LANG=C.UTF-8

# Build dependencies
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
            --update --no-cache python3 python3-dev && \
    apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
            --update --no-cache py-numpy py-numpy-dev && \
    apk add --update --no-cache build-base gfortran libstdc++ \
                                libpng libpng-dev \
                                freetype freetype-dev && \
    # Make Python3 as default
    ln -fs /usr/include/locale.h /usr/include/xlocale.h && \
    ln -fs /usr/bin/python3 /usr/local/bin/python && \
    ln -fs /usr/bin/pip3 /usr/local/bin/pip && \
    # Install Python dependencies
    pip3 install -v --no-cache-dir matplotlib==2.2 && \
    # Cleanup
    apk del --purge build-base gfortran libpng-dev freetype-dev \
                    python3-dev py-numpy-dev && \
    rm -vrf /var/cache/apk/*