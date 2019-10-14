# R package that contains plink binaries for windows, mac and linux

Some packages benefit from calling tools such as plink as subcommands. This package bundles them up so that they are easily addressable e.g. for testing etc.

## Installation

```
devtools::install_github("explodecomputer/plinkbinr")
```


## Usage

e.g. 

```
get_plink_exe()
```

will return path to the operating system specific plink binary.
