FROM golob/emirge:0.61.1__bcw.0.3.0

RUN apt-get update && \
    apt-get install -y wget git python2.7 openjdk-8-jdk && \
    wget https://downloads.sourceforge.net/project/bbmap/BBMap_38.90.tar.gz && \
    tar -xzvf BBMap_38.90.tar.gz && \
    rm BBMap_38.90.tar.gz && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="/bbmap:${PATH}"

RUN git clone https://github.com/yxxue/MetaRib.git

RUN pip install pandas

WORKDIR /MetaRib

CMD ["python2.7", "run_MetaRib.py"]
