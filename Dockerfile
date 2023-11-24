FROM docker/dev-environments-default:stable-1 AS builder

FROM python:3.10

RUN apt update
RUN apt install -y default-jre
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118


ENTRYPOINT [ "/bin/bash" ]