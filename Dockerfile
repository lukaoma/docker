FROM nikolaik/python-nodejs

RUN ls && pwd

RUN git clone https://github.com/lukaoma/docker.git
RUN ls && pwd

WORKDIR /docker

RUN ls && pwd
RUN cd frontend && yarn install && yarn build
RUN pwd && ls
RUN pip3 install -r backend/requirements.txt

EXPOSE 80

ENTRYPOINT [ "python" ]

CMD [ "backend/main.py" ]
