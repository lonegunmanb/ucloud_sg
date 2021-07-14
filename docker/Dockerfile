FROM hashicorp/terraform:light

ARG VERSION
ARG BACKEND

WORKDIR /code

RUN git clone https://github.com/lonegunmanb/ucloud_sg.git#$VERSION

WORKDIR ucloud_sg

COPY dummy $BACKEND ./

RUN terraform init -backend=false

ENTRYPOINT ["terraform"]

