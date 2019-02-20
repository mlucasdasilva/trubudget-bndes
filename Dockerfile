FROM  node:10.15.1-jessie

ADD . /trubudget-bndes

WORKDIR /trubudget-bndes

RUN cp config/config.json.PRD config/config.json && \
    cp control/executionData.json.INSTALL control/executionData.json 

RUN npm install

VOLUME [ "/trubudget-bndes/data" , "/trubudget-bndes/log" ]



CMD [ "npm" , "start" , "execution" ]


