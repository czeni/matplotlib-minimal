################################################################################
##    Dockerfile to build minimal Matplotlib image with Python3 and Numpy     ##
################################################################################
FROM python:3.6-slim

MAINTAINER Janos Czentye <czentye@tmit.bme.hu>

ENV LANG=C.UTF-8

# Build dependencies
RUN pip3 install --no-cache-dir matplotlib~=2.2.0
