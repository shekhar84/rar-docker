# RAR-alpine
## A tiny image to run rar compression tools.
### Intro
RAR tools (rarlinux-5.4.0.tar.gz) is install on [alpine:3.11](https://hub.docker.com/_/alpine/) and finally copy to [scratch] (https://hub.docker.com/_/scratch) to deduce the final image size

#### Docker hub: [shekharsarker84/rar-scratch](https://hub.docker.com/r/shekharsarker84/rar-scratch)

```bash
docker pull shekharsarker84/rar-scratch
```
####  Usage
Example:

- To add files to archive
```bash
docker run --rm -v ${PWD}:/work -w /work shekharsarker84/rar-scratch:latest a ARCHIEVE.rar <files>
```
- To extract archieve files
```bash
docker run --rm -v ${PWD}:/work -w /work shekharsarker84/rar-scratch:latest e -r <FILE.rar>
```
### Important Notes
Here RAR 5.40 **rarlinux-5.4.0.tar.gz** trail version is usage for learning purpose. Visit [rarlab](https://www.rarlab.com/download.htm) for license version
