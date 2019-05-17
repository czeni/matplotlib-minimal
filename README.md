# Matplotlib 3.0.3 with Python 3.7.3 on Alpine Linux 3.9.4

[![](https://img.shields.io/docker/build/czentye/matplotlib-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/matplotlib-minimal)
[![](https://img.shields.io/docker/pulls/czentye/matplotlib-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/matplotlib-minimal)
[![](https://img.shields.io/microbadger/image-size/czentye%2Fmatplotlib-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/matplotlib-minimal)

János Czentye, HSNLab@BME

2019 May

### Description

This repository provides a Dockerfile for building and image for Matplotlib 3.0.3
with Python3.7. Matplotlib is compiled from source using Python pip tool and PyPI
repository version: https://pypi.org/project/matplotlib/

https://github.com/matplotlib/matplotlib/releases

The Docker image is based on the latest Alpine Linux 3.9 for a minimum size 
image(~140MB). It uses Alpine packages from main and community repos.

https://alpinelinux.org/

Older versions can be found under different tags.

### Configuration

Matplotlib compiled with the following configuration:

```text
    Edit setup.cfg to change the build options

    BUILDING MATPLOTLIB
                matplotlib: yes [3.0.3]
                    python: yes [3.7.3 (default, Apr 17 2019, 11:48:37)  [GCC
                            8.3.0]]
                  platform: yes [linux]

    REQUIRED DEPENDENCIES AND EXTENSIONS
                     numpy: yes [version 1.16.3]
          install_requires: yes [handled by setuptools]
                    libagg: yes [pkg-config information for 'libagg' could not
                            be found. Using local copy.]
                  freetype: yes [version 2.10.0]
                       png: yes [version 1.6.37]
                     qhull: yes [pkg-config information for 'libqhull' could not
                            be found. Using local copy.]

    OPTIONAL SUBPACKAGES
               sample_data: yes [installing]
                  toolkits: yes [installing]
                     tests: no  [skipping due to configuration]
            toolkits_tests: no  [skipping due to configuration]

    OPTIONAL BACKEND EXTENSIONS
                       agg: yes [installing]
                     tkagg: yes [installing; run-time loading from Python Tcl /
                            Tk]
                    macosx: no  [Mac OS-X only]
                 windowing: no  [Microsoft Windows only]

    OPTIONAL PACKAGE DATA
                      dlls: no  [skipping due to configuration]

```

### Download

To get the image use ``sudo docker pull czentye/matplotlib-minimal``

### Run

To run Python with Matplotlib use the following command ``sudo docker run -ti czentye/matplotlib-minimal python``

### License

Licensed under MIT license, see LICENSE file.

