FROM dart:2.18.5-sdk

WORKDIR /app

ADD . /app/
RUN dart pub get
RUN dart pub global activate conduit 4.0.0
RUN dart pub run conduit db generate
RUN dart pub run conduit db validate
EXPOSE 6100

ENTRYPOINT [ "dart","pub","run","conduit:conduit","serve","--port","6100" ]