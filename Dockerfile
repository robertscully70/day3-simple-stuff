FROM docker.io/websphere-liberty:javaee8
USER root
RUN mkdir /my-special-folder && chown -R 1001:1001 /my-special-folder
USER 1001
COPY Dockerfile /my-special-folder
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
