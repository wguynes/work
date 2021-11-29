FROM ubuntu

RUN apt-get update \
  && apt-get install -y git vim sudo iputils-ping \
  && rm -rf /var/lib/apt/lists/* \
  && useradd -p '*' -ms /bin/bash user \
  && usermod -a -G sudo user \
  && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


ENTRYPOINT ["su", "-", "user"]
