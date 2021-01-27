# ASR Labs Dockerfile

This is a handily-packaged [Docker](https://docker.com) configuration for the ASR
labs, so that you can run it locally without trying to build OpenFST by hand. 
OpenFST is a nightmare to make work with Python and macOS due to packaging hell,
and on Windows you can't build anything at all (because it's windows). This is
much easier, trust me.

This dockerfile also exposes [Jupyter Lab](https://jupyterlab.readthedocs.io/en/stable/)
rather than Jupyter notebooks, meaning you'll have a much better experience working
with the notebooks (you'll be able to open more than one at a time!).

To get started, you'll need to [install Docker](https://docs.docker.com/get-docker/).
If you're running macOS or Windows, you'll have everything you need. On Linux,
you'll also need to install [docker-compose](https://docs.docker.com/compose/install/).

Once you have all the prerequisites, simply run:

```
git clone https://github.com/pkage/asr_labs_docker
cd asr_labs_docker
git clone https://github.com/Ore-an/asr_labs.git
docker-compose build
```

To start the server, run:

```
docker-compose up
```

Note that __only changes made inside `/asr_labs` will persist__, changes made
outside this directory will be lost when you quit `docker-compose`.
