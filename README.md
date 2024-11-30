# iso-mirror
Update your mirror of favourite ISO images


## Requirements

### download tool
By default `curl` is used to perform downloads, but config.yaml
* curl
* ctorrent -- for torent downloads

## usage

```
-c --config=file    specify location of `config.yaml` file
-s --system=name    operate only on given system (e.g. Ubuntu)
-n --dry-run        check pages and show what would be downloaded/archived/deleted
-d --curldebug      enable libcurl debug output

```

## Installation

### perl modules
```
cpanm --installdeps .
```