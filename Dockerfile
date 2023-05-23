FROM mcr.microsoft.com/devcontainers/python:0-3.11
WORKDIR /app
ADD . /app
RUN pip install --no-cache-dir -r requirements.txt
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
EXPOSE 5003
CMD ["/app/entrypoint.sh"]
