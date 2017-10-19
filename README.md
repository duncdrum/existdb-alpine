# About this image
This is a eXist DB image build on top of official openjre alpine image.
It is forked from davidgaya/docker-eXistDB which is in turn forked from dariah/exist.

# eXist XML Database

eXist is an open source software project for NoSQL databases built on XML technology.
It is classified as both a NoSQL document-oriented database system and a native XML
database (and it provides support for XML, JSON, HTML and Binary documents).

Unlike most relational database management systems (RDBMS) and NoSQL databases,
eXist provides XQuery and XSLT as its query and application programming languages.
eXist is released under version 2.1 of the GNU LGPL. (Wikipedia)

# Licenses

This fork keeps the original license. See LICENSE.txt.

eXist is released under version 2.1 of the GNU LGPL.

# Usage

admin password is set via environment variable EXIST_ADMIN_PASSWORD.

To start your container binding to port 8080:

    docker run -d -p 8080:8080 -e EXIST_ADMIN_PASSWORD=pass jurrian/existdb-alpine:latest

You are also allowed to manipulate the max memory available for exist (default is 1024M):

    docker run -P -d -e MAX_MEMORY=1024 -e EXIST_ADMIN_PASSWORD=pass jurrian/existdb-alpine:latest

Then check it at:

    curl http://localhost:8080/exist/
