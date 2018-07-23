# Matplotlib 2.2 with Python3.6

2018 July

### Description

This repository provides a Dockerfile for building and image for Matplotlib 2.2.0
with Python3.6.

The Docker image is based on the latest Alpine Linux 3.8 for a minimum size 
image(~135MB). It uses Alpine packages from main and community repos.

Matplotlib is compiled from source using Python pip tool.

### Configuration

Matplotlib compiled with the following configuration:

```text
    ============================================================================
    Edit setup.cfg to change the build options

    BUILDING MATPLOTLIB
                matplotlib: yes [2.2.2]
                    python: yes [3.6.4 (default, Apr  6 2018, 05:23:32)  [GCC
                            6.4.0]]
                  platform: yes [linux]

    REQUIRED DEPENDENCIES AND EXTENSIONS
                     numpy: yes [version 1.14.3]
          install_requires: yes [handled by setuptools]
                    libagg: yes [pkg-config information for 'libagg' could not
                            be found. Using local copy.]
                  freetype: yes [version 2.9.1]
                       png: yes [version 1.6.34]
                     qhull: yes [pkg-config information for 'libqhull' could not
                            be found. Using local copy.]

    OPTIONAL SUBPACKAGES
               sample_data: yes [installing]
                  toolkits: yes [installing]
                     tests: no  [skipping due to configuration]
            toolkits_tests: no  [skipping due to configuration]

    OPTIONAL BACKEND EXTENSIONS
                    macosx: no  [Mac OS-X only]
                    qt5agg: no  [PySide2 not found; PyQt5 not found]
                    qt4agg: no  [PySide not found; PyQt4 not found]
                   gtk3agg: no  [Requires pygobject to be installed.]
                 gtk3cairo: no  [Requires cairocffi or pycairo to be installed.]
                    gtkagg: no  [Requires pygtk]
                     tkagg: yes [installing; run-time loading from Python Tcl /
                            Tk]
                     wxagg: no  [requires wxPython]
                       gtk: no  [Requires pygtk]
                       agg: yes [installing]
                     cairo: no  [cairocffi or pycairo not found]
                 windowing: no  [Microsoft Windows only]

    OPTIONAL LATEX DEPENDENCIES
                    dvipng: no
               ghostscript: no
                     latex: no
                   pdftops: no

    OPTIONAL PACKAGE DATA
                      dlls: no  [skipping due to configuration]
```

### Download

To get the image use ``sudo docker pull czentye/matplotlib-minimal``