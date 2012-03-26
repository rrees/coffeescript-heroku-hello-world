
port = Number(process.env.PORT or 3000)

hello = require('zappa') port, ->
	@get '/': 'Hello world'
	
