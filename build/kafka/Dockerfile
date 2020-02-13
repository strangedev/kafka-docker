FROM debian:buster AS buildenv
RUN apt-get update && apt-get --yes install tar curl
WORKDIR /build
ADD . .
RUN sh ./script/install-kafka.sh /build /kafka

FROM openjdk:15
WORKDIR /kafka
COPY --from=buildenv /kafka /kafka
CMD ["/kafka/bin/kafka-server-start.sh", "config/server.properties"]