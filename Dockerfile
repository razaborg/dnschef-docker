FROM alpine
RUN apk --update add git python2 py-pip
RUN pip install --upgrade pip \
&& pip install dnslib \
&& pip install IPy
RUN git clone https://github.com/iphelix/dnschef.git
RUN mkdir /config && cp /dnschef/dnschef.ini /config/
ENTRYPOINT ["/dnschef/dnschef.py", "--file", "/config/dnschef.ini","--interface", "0.0.0.0" ,"-q"]
