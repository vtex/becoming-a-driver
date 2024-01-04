FROM python:3.10-slim-bullseye

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY generate_all_levels.sh .
COPY radar.py .

VOLUME /app/images
VOLUME /app/levels

ENTRYPOINT [ "/app/generate_all_levels.sh" ]
