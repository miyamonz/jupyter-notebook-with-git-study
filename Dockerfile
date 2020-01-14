FROM continuumio/anaconda3

EXPOSE 8888
CMD jupyter notebook --notebook-dir=/notebooks --ip='*' --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
