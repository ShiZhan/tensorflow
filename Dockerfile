FROM zhan2016/python-lab:3.6.0
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

RUN pip --no-cache-dir install tensorflow keras

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
CMD ["/bin/sh", "-c", "/usr/local/bin/jupyter-notebook --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks"]
