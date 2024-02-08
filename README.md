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
-n --dry-run        check pages and show what would be downloaded, also show what would be deleted when `delete-obsolete` configuration option is enabled

```

## Installation

### perl modules
```
cpanm --installdeps .
--man-pages
```