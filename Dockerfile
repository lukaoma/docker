FROM nikolaik/python-nodejs



RUN git clone https://github.com/lukaoma/docker.git


WORKDIR /docker

RUN git pull --force

RUN cd frontend && yarn install && yarn build

RUN pip3 install -r backend/requirements.txt


EXPOSE 80

CMD git pull --force && python3 backend/main.py
