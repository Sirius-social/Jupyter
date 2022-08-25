FROM jupyter/scipy-notebook

USER root
# Install Java Kernel from source
RUN apt-get update && \
	apt-get install -y default-jdk default-jre &&\
	mkdir -p /opt/jkernel && cd /opt/jkernel && git clone https://github.com/SpencerPark/IJava.git && cd IJava && \
	./gradlew installKernel && rm -r /opt/jkernel
	
	

RUN pip install \
	petlib \
	zksk \
	iplantuml \
	iplotter \
	notebookjs \
	sirius_sdk==2.0.1 \
	&& mkdir -p /opt/conda/notebooks

USER jovyan

WORKDIR /opt/conda/notebooks
ENV TOKEN ''

CMD jupyter lab --notebook-dir=/opt/conda/notebooks --NotebookApp.token=$TOKEN --ip='*' --port=8000 --no-browser --allow-root
