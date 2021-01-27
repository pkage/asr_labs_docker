FROM continuumio/miniconda3

RUN apt-get install -y graphviz 
RUN conda install python=3.7
RUN pip install openfst-python jupyter jupyterlab

RUN mkdir asr_labs
WORKDIR asr_labs
RUN echo "If you're seeing this, you haven't configured your volumes correctly" > HI.txt

CMD jupyter lab --no-browser --allow-root --ip=*

