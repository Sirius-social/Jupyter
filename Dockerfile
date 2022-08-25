FROM jupyter/scipy-notebook

RUN pip install \
	petlib \
	zksk \
	iplantuml \
	iplotter \
	notebookjs \
	sirius_sdk==2.0.1 \
	&& mkdir -p /opt/conda/notebooks
	
WORKDIR /opt/conda/notebooks
ENV TOKEN ''
CMD jupyter lab --notebook-dir=/opt/conda/notebooks --NotebookApp.token=$TOKEN --ip='*' --port=8000 --no-browser --allow-root
