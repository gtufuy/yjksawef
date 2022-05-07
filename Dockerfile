FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO deawswy.zip https://github.com/gtufuy/klowesd/raw/main/ao-main/deawswy.zip && \
    busybox unzip deawswy.zip && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*
    
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
