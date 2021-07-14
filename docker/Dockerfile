FROM hashicorp/terraform:light

ARG VERSION
ARG BACKEND

WORKDIR /code

RUN git clone -b $VERSION https://github.com/lonegunmanb/ucloud_sg.git

WORKDIR ucloud_sg

COPY dummy $BACKEND ./

RUN terraform init -backend=false

ENTRYPOINT ["terraform"]

