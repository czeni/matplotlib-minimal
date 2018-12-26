# Matplotlib 3.0.2 with Python3.6.7 on Alpine Linux 3.8.2

János Czentye, HSNLab@BME

2018 December

### Description

This repository provides a Dockerfile for building and image for Matplotlib 3.0.2
with Python3.6.7. Matplotlib is compiled from source using Python pip tool.

https://github.com/matplotlib/matplotlib/releases

The Docker image is based on the latest Alpine Linux 3.8.2 for a minimum size 
image(~140MB). It uses Alpine packages from main and community repos.

https://alpinelinux.org/

Older versions can be found under different tags.

### Configuration

Matplotlib compiled with the following configuration:

```text
    ============================================================================
    Edit setup.cfg to change the build options

    BUILDING MATPLOTLIB
                matplotlib: yes [3.0.2]
                    python: yes [3.6.7 (default, Nov  7 2018, 21:49:03)  [GCC
                            8.2.0]]
                  platform: yes [linux]

    REQUIRED DEPENDENCIES AND EXTENSIONS
                     numpy: yes [version 1.15.4]
          install_requires: yes [handled by setuptools]
                    libagg: yes [pkg-config information for 'libagg' could not
                            be found. Using local copy.]
                  freetype: yes [version 2.9.1]
                       png: yes [version 1.6.35]
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

