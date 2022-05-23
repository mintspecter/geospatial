
# Base image from jupyter
ARG BASE_CONTAINER=jupyter/pyspark-notebook:spark-3.2.1
FROM $BASE_CONTAINER

LABEL email="mintspecter@gmail.com" \
      name="mintspecter" \
      version="0.1" \
      description="Pyspark JupyterNotebook for Geo-Spatial"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER ${NB_UID}

# Install spatial packages

RUN arch=$(uname -m) && \
    if [ "${arch}" == "aarch64" ]; then \
        # Prevent libmamba from sporadically hanging on arm64 under QEMU
        # <https://github.com/mamba-org/mamba/issues/1611>
        export G_SLICE=always-malloc; \
    fi \
    && mamba install --quiet --yes \
    'shapely' \
    'pyproj' \
    'geopandas' \
    && mamba clean --all -f -y \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"
