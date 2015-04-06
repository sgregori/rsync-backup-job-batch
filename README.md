# rsync-backup-job-batch
Script for launching rsync from a text file list with exclussions

USAGE:
```bash
script.sh machines.txt
```

MACHINES file example:
```bash
10.0.0.5|vm_example_name
```

EXCLUDE file example:
```bash
/proc/*
/dev/*
```
