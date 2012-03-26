(function() {
  var hello, port;

  port = Number(process.env.PORT || 3000);

  hello = require('zappa')(port, function() {
    this.get({
      '/': function() {
        return this.render({
          index: {
            'name': 'world'
          }
        });
      }
    });
    this.view({
      index: function() {
        this.title = 'Greetz';
        h1("Demo site");
        return p("Hello " + this.name);
      }
    });
    this.view({
      layout: function() {
        doctype(5);
        return html(function() {
          head(function() {
            title(this.title);
            return link({
              rel: "stylesheet",
              href: "/base.css"
            });
          });
          return body(this.body);
        });
      }
    });
    return this.css({
      '/base.css': 'body {\n	margin-left: auto;\n	margin-right: auto;\n	width:80%;\n	font-family: sans-serif;\n	margin-top: 2em;\n}'
    });
  });

}).call(this);
