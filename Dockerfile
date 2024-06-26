From ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-yaml \
    git

#RUN python3 -m venv .venv
#RUN source .venv/bin/activate
#RUN python3 -m pip install 'PyYAML==5.4.1'
#RUN deactivate 
#RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
