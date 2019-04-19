FROM python:3.4

RUN pip install flask
RUN pip install requests
RUN pip install redis
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191

CMD ["/cmd.sh"]