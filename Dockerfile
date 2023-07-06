FROM continuumio/anaconda
RUN conda install -c bioconda vsearch
RUN conda install -c bioconda emirge
COPY --from=edraizen/usearch:latest /opt/usearch/usearch /usr/bin/usearch
RUN conda install -c bioconda bbmap
# Add https://github.com/yxxue/MetaRib
RUN git clone https://github.com/yxxue/MetaRib