FROM alpine

RUN apk --no-cache add curl bash

COPY xwars.sh xwars.sh
CMD ["/xwars.sh"]

