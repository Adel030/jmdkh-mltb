FROM anasty17/mltb:latest
RUN apt-get update && apt-get -y install wget unzip
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN wget -O mirror.zip http://nik66.c1.biz/Doprax_Mirror_Bots/junedv1.zip
RUN unzip mirror.zip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
RUN chmod +x /usr/src/app/start.sh
ENTRYPOINT ["/usr/src/app/start.sh"]
