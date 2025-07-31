FROM python:latest
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"
Run pip install --upgrade pip
RUN apt update && apt upgrade -y && apt install git -y && apt install python3 -y && apt install python3-pip -y && apt install -y ffmpeg opus-tools bpm-tools
RUN git clone https://github.com/vitiko98/qobuz-dl.git
RUN pip3 install -r requirements.txt
CMD python3 -m  qobuz-dl
