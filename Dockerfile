FROM library/golang

WORKDIR /build
ADD . /build/

RUN mkdir /tmp/cache /app
RUN CGO_ENABLED=0 GOCACHE=/tmp/cache go build  -mod=vendor -v -o /app/api-server .

CMD [ "/app/api-server" ]
