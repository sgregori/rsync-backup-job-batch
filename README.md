# rsync-backup-job-batch
Simple script for launching rsync from a text file with exclussions text file

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
