FROM jupyter/scipy-notebook

USER root
# Install Java Kernel from source
RUN apt-get update && \
	apt-get install -y default-jdk default-jre
	
USER jovyan

RUN	mkdir -p ~/jkernel && cd ~/jkernel && git clone https://github.com/SpencerPark/IJava.git && cd IJava && \
	./gradlew installKernel && rm -r ~/jkernel
	
	

RUN pip install \
	kotlin-jupyter-kernel \
	petlib \
	zksk \
	iplantuml \
	iplotter \
	notebookjs \
	sirius_sdk==2.1.0 \
	&& mkdir -p /opt/conda/notebooks


WORKDIR /opt/conda/notebooks
ENV TOKEN ''

CMD jupyter lab --notebook-dir=/opt/conda/notebooks --NotebookApp.token=$TOKEN --ip='*' --port=8000 --no-browser --allow-root
