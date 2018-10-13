# docker-serposcope
simple container for running SERPOSCOPE

## deploy 1 (gcp, recommended)

create a GCP project, and note it's project id

```bash
$ ./setup-gcp.sh <project-id>
```

check External IP, and access

```
http://<external-ip>:7134/
```

## deploy 2 (for any machine)

```bash
$ ./setup-vm.sh
```

on a virtual machine.

