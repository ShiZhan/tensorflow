FROM zhan2016/python-lab
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

ENV TF_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.0-cp35-cp35m-linux_x86_64.whl
RUN pip install $TF_URL

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 22 8888
CMD ["/home/run.sh"]
