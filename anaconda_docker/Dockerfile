FROM continuumio/anaconda3:latest

RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN mkdir -p /opt/notebooks

VOLUME /opt/notebooks
WORKDIR /opt/notebooks

EXPOSE 8888

ADD notebook.sh /
CMD ["/notebook.sh"]
