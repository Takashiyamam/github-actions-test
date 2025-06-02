FROM public.ecr.aws/lambda/nodejs:22 as layer

RUN pwd
RUN ls
RUN dnf install -y unzip
RUN mkdir -p /opt
ADD layer.zip ./
RUN unzip layer.zip -d /opt

RUN pwd
RUN ls


WORKDIR /app
RUN pwd
RUN ls
