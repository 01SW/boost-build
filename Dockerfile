FROM ws01/ubuntu-sshd:20.04

COPY bin /usr/local/bin/
COPY include /usr/local/include/
COPY lib /usr/local/lib/
COPY share /usr/local/share/
COPY Dockerfile /home/ws01/Dockerfile
RUN apt-get update && apt-get install -yqq gcc g++ make cmake rsync mpi-default-dev libicu-dev libbz2-dev python-dev python3-dev

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
