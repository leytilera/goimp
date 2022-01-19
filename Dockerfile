FROM mono:6.12.0.107

RUN apt update && apt install -y wget unzip && mkdir /opt/game && cd /opt/game && wget https://cdn.tilera.xyz/file/goimp.zip && unzip goimp.zip && rm goimp.zip

COPY ./start.sh /opt/game/

RUN chmod +x /opt/game/start.sh

VOLUME ["/opt/game/config"]

ENTRYPOINT ["sh", "/opt/game/start.sh"]
