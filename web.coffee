
hello = require('zappa') ->
	@get '/': 'Hello world'
	
hello.app.listen process.env.PORT or 3000