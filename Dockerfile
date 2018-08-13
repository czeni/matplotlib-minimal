################################################################################
##    Dockerfile to build minimal Matplotlib image with Python3 and Numpy     ##
################################################################################
FROM python:3.6-slim

MAINTAINER Janos Czentye <czentye@tmit.bme.hu>

ENV LANG=C.UTF-8

ARG MATPLOTLIB_VERSION=2.2.0

# Build dependencies
RUN pip3 install --no-cache-dir matplotlib==$MATPLOTLIB_VERSION
