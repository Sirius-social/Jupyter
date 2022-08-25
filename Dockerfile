FROM jupyter/scipy-notebook

RUN pip install \
	petlib \
	zksk \
	iplantuml \
	iplotter \
	notebookjs \
	sirius_sdk==2.0.1 \
	&& mkdir -p /opt/notebooks
	
WORKDIR /opt/notebooks
ENV TOKEN ''
CMD jupyter lab --notebook-dir=/opt/notebooks --NotebookApp.token=$TOKEN --ip='*' --port=8000 --no-browser --allow-root
