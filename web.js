(function() {
  var hello;

  hello = require('zappa')(function() {
    return this.get({
      '/': 'Hello world'
    });
  });

  hello.app.listen(Number(process.env.PORT || 3000));

}).call(this);
