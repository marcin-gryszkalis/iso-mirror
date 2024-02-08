### ISO-MIRROR(1)                                                                                                      iso-mirror manual                                                                                                     ISO-MIRROR(1)

### NAME
iso-mirror -- mirror set of .iso files for use in multiboot environment like Ventoy

### SYNOPSIS
       iso-mirror [--config=file] [--dry-run] [--version]

       iso-mirror --help

### DESCRIPTION
iso-mirror is

### OPTIONS
       -c --config=file    specify location of ‘config.yaml‘ file
       -n --dry-run        check pages and show what would be downloaded, also show what would be deleted when ‘delete-obsolete‘ configuration option is enabled

       The integer argument is not checked.

### EXIT STATUS
       In case of errors downloading something iso-mirror will exit with status 1.  In case of fatal errors (like syntax error in configuration file) exit code will be 255.

### AUTHOR
Marcin Gryszalis <mg@fork.pl>

### SEE ALSO
0.1                                                                                                                   2023-12-20                                                                                                         ISO-MIRROR(1)

