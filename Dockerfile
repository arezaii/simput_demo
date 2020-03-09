FROM fedora:31

RUN yum update -y

RUN dnf install -y gcc-c++ make

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -

RUN dnf install -y nodejs

RUN npm install -g simput && Simput

RUN dnf install -y git

RUN useradd -ms /bin/bash simput_demo

USER simput_demo

WORKDIR /home/simput_demo

RUN git clone --single-branch -b type-parflow-conus https://github.com/Kitware/simput.git

WORKDIR /home/simput_demo/simput

RUN git checkout f6d7365ea3

RUN Simput -c src/ -o versions/ -t parflow-conus

ENTRYPOINT ["Simput", "-p", "8080"]
