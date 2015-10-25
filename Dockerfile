FROM cloudfoundry/trusty64

RUN wget -q -O- https://s3.amazonaws.com/download.fpcomplete.com/ubuntu/fpco.key | sudo apt-key add - && \
    echo 'deb http://download.fpcomplete.com/ubuntu/trusty stable main' | sudo tee /etc/apt/sources.list.d/fpco.list && \
    sudo apt-get update && sudo apt-get install stack -y



