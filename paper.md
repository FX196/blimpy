---
title: 'blimpy: Breakthrough Listen I/O Methods for Python'
tags:
  - Python
  - astronomy
  - radio astronomy
  - technosignatures
  - SETI
authors:
  - name: Danny C. Price
    orcid: 0000-0003-2783-1608
    affiliation: "+, 1, 2" # (Multiple affiliations must be quoted)
  - name: J. Emilio Enriquez
    orcid: 0000-0003-2516-3546
    affiliation: "+, 1, 3"
  - name: Yuhong Chen
    affiliation: 1    
  - name: Mark Siebert
    affiliation: 2    
affiliations:
  - name: Equal contribution from both authors
    index: +
  - name: Department of Astronomy,  University of California Berkeley, Berkeley CA 94720
    index: 1
  - name: Centre for Astrophysics & Supercomputing, Swinburne University of Technology, Hawthorn, VIC 3122, Australia
    index: 2
  - name: Radboud University Nijmegen, Nimegen, NL
    index: 3
date: 27 June 2019
bibliography: paper.bib
---

# Summary

The search for extraterrestrial intelligence (SETI) has historically used radio astronomy data as
the main venue to search for artificial signals of extraterrestrial origin. The Breakthrough Listen program
is the latest large-scale project for the search of technosignatures,  and thanks to modern telescopes
and instrumentation, as well as significant amounts of dedicated observing time, the program
has become the largest SETI endeavour in history. This has also resulted in an unprecedented amount of
publicly-available data [@Lebofsky:2019]. Over 1 PB of from the Breakthrough Listen program may be downloaded from
[seti.berkeley.edu/opendata](http://seti.berkeley.edu/opendata).

The ``Blimpy``---Breakthrough Listen I/O Methods for Python---package provides Python 2.7+/3.6+ utilities
for viewing and interacting with the data formats used within the Breakthrough Listen program.
This includes Sigproc filterbank (.fil) and HDF5 (.h5) files that contain dynamic spectra (aka 'waterfalls'),
and GUPPI raw (.raw) files that contain voltage-level data. Python methods for data extraction,
calibration, and visualization are provided. A suite of command-line utilities are also available.

The waterfall data product stores an array of detected power across frequency channel (i.e. spectra) over time.
These files can be several GB in size, with up to billions of channels and/or hundreds of thousands of time steps. ``Blimpy`` provides
convenient methods to extract frequencies and time slices of interest---without loading the full file into memory--which
are presented as ``Numpy`` arrays [@Numpy:2011]. Methods for manipulating lower-level voltage data products
stored in the GUPPI raw format, as generated by the Green Bank Telescope, are also provided.
``Blimpy`` uses the Matplotlib library [@Pylab:2007] to provide plotting of spectra, time series, and dynamic spectra;
the ``Astropy`` package for handling of astronomical coordinates [@Astropy:2013; @Astropy:2018]; and,
the ``H5py`` package to interact with data stored in HDF5 files [@H5py:2013]. The [turboSETI](https://github.com/UCBerkeleySETI/turbo_seti) package, which conducts doppler acceleration searches for narrowband signals that would indicate the presence of technologically-capable life beyond Earth, uses ``Blimpy`` for file handling and diagnostic plotting.

``Blimpy`` was designed to be used by radio astronomers, students and anyone else interested in accessing
 Breakthrough Listen data, whether searching for SETI signals, spectral lines, pulsars, fast radio bursts, or other astrophysical phenomena. It has already been used in a number of scientific publications
[@Croft:2016; @Enriquez:2017; @Enriquez:2018; @Enriquez:2019; @Gajjar:2018; @Price:2019a;  @Price:2019b].

# Acknowledgements

We thank G. Molenaar and B. Brzycki for their code contributions, along with G. Zhang, G. Hellbourg, N. Richard, M. Lebofsky, G. Foster, C. Gilbertson, and the wider _Breakthrough Listen_ collaboration. Breakthrough Listen is managed by the Breakthrough
Initiatives, sponsored by the Breakthrough Prize Foundation.

# References






