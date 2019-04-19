FROM python

RUN pip install flask
RUN pip install requests
RUN pip install redis
WORKDIR /app
COPY app /app
COPY cmd.sh /

CMD ["chmod +x /cmd.sh"]