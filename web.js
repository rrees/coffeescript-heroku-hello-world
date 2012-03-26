(function() {

  require('zappa')(function() {
    return this.get({
      '/': 'Hello world'
    });
  });

}).call(this);
