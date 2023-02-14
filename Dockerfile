FROM anasty17/mltb:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
EXPOSE 8000
RUN chmod +x /usr/src/app/start.sh
ENTRYPOINT ["/usr/src/app/start.sh"]
