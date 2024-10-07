FROM python:3.9-slim-buster
# FROM mcr.microsoft.com/devcontainers/base:jammy 

ENV VENV_PATH=/poetry/venv

RUN apt -y -q update 
RUN     apt -y -q install curl 
RUN     apt -y install make 
RUN     apt -y install git 
RUN     python -m venv /poetry/venv 
RUN     apt-get -y -q --purge autoremove curl 
RUN    apt-get -y -q clean autoclean 
RUN    python3 -m venv $VENV_PATH 
RUN    $VENV_PATH/bin/pip install -U pip setuptools  
RUN    $VENV_PATH/bin/pip install poetry 
RUN    rm -rf /var/lib/apt/lists/*

# Add to PATH
ENV PATH="${POETRY_HOME}/bin:${PATH}"

# /poetry/venvs should be mounted as a volume for performance
ENV PATH=/poetry/venv/bin:$PATH \
    VIRTUAL_ENV=/poetry/venv

# Configure Poetry to not create a new virtual environment, it will reuse the one created by python above
RUN poetry config virtualenvs.create false

#RUN mkdir -p /workspaces/dbt_duckdb
# Set profiles dir
ENV DBT_PROFILES_DIR=/workspaces/dbt_duckdb_devcontainer/src/dbt_duckdb_devcontainer
