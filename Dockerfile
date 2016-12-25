FROM zhan2016/python-lab:3.5
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

ENV TF_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.0-cp35-cp35m-linux_x86_64.whl
RUN pip --no-cache-dir install $TF_URL

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
CMD ["/bin/sh", "-c", "/usr/local/bin/jupyter-notebook --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks"]
