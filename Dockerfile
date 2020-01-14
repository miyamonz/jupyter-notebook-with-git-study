FROM continuumio/anaconda3
ARG NOTEBOOK_DIR

WORKDIR /code
EXPOSE 8888

# for jupytext
RUN conda config --append channels conda-forge

# create env from yml file
COPY environment.yml /code/environment.yml
RUN conda env create -f environment.yml
RUN echo "conda activate $(head -1 environment.yml | cut -d' ' -f2)" >> /root/.bashrc

CMD jupyter notebook --notebook-dir="${NOTEBOOK_DIR}" --ip='*' --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
