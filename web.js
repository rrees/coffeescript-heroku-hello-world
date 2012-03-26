(function() {
  var hello, port;

  port = Number(process.env.PORT || 3000);

  hello = require('zappa')(port, function() {
    return this.get({
      '/': 'Hello world'
    });
  });

}).call(this);
