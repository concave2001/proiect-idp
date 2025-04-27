FROM alpine:3

RUN apk add --update py3-pip
RUN python3 -m venv /venv

ENV PATH="/venv/bin:$PATH"

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install flask-mysql

COPY server.py /usr/src/server/
COPY templates/index.html /usr/src/server/templates/

EXPOSE 5000

CMD ["python3", "/usr/src/server/server.py"]