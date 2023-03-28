FROM alpine
COPY . /root/
RUN /bin/sh /root/Install.sh
EXPOSE 5432
CMD ["/bin/sh", "/root/Run.sh"]
