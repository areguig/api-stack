const server = vertx.createHttpServer();

server.requestHandler(function (request) {
    request.response().end("Hello word");
}).listen(8080);



vertx.setPeriodic(1000, function() {
    console.log('Timer has fired');
   });