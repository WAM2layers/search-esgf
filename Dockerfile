FROM mambaorg/micromamba:1.5.10
LABEL maintainer="Bart Schilperoort <b.schilperoort@esciencecenter.nl>"
LABEL org.opencontainers.image.source="https://github.com/WAM2layers/search-esgf"

COPY --chown=$MAMBA_USER:$MAMBA_USER env.yml /tmp/env.yaml

RUN micromamba install --yes --file /tmp/env.yaml && micromamba clean --all --yes

ARG MAMBA_DOCKERFILE_ACTIVATE=1

RUN pip install https://github.com/WAM2layers/search-esgf/archive/refs/heads/main.zip

RUN mkdir /home/mambauser/climate_data

