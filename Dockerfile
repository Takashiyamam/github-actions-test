FROM public.ecr.aws/lambda/nodejs:22 AS layer

RUN pwd
RUN ls -la
RUN dnf install -y unzip
RUN mkdir -p /opt
ADD layer.zip ./
RUN unzip layer.zip -d /opt

RUN pwd
RUN ls -la


WORKDIR /app
RUN pwd
RUN ls -la

FROM public.ecr.aws/lambda/nodejs:22 AS build
RUN pwd
RUN ls -la
WORKDIR /app
COPY --from=layer /opt /opt
RUN pwd
RUN ls -la
