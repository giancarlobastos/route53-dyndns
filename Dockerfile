FROM python:2

RUN pip install \
        boto \
        dnspython

COPY r53dyndns.py /usr/local/bin/r53dyndns.py
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
