
hello = require('zappa') ->
	@get '/': 'Hello world'
	
hello.app.listen Number(process.env.PORT or 3000)