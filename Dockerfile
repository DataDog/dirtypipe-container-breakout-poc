from ubuntu:21.04
RUN apt update && apt install -y gcc libc6 libc-bin

COPY hack.sh hack.sh
COPY exploit.c exploit.c
RUN gcc exploit.c -o exploit

CMD ["./hack.sh"]
