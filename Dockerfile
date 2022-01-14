FROM alpine

RUN apk --no-cache add curl

COPY xwars.sh xwars.sh
CMD ["xwars.sh"]

