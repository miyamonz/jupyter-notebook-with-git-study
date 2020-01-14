FROM continuumio/anaconda3
ARG NOTEBOOK_DIR

EXPOSE 8888
CMD jupyter notebook --notebook-dir="${NOTEBOOK_DIR}" --ip='*' --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
