FROM debian
MAINTAINER Brian Maher
COPY pytest.py .
COPY init.sh .
RUN apt-get update && apt-get -y install git-core python3 python3-requests python3-ws4py nmap && update-alternatives --install /usr/bin/python python /usr/bin/python3 10
ENTRYPOINT bash ./init.sh
