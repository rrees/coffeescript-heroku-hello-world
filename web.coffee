
port = Number(process.env.PORT or 3000)

hello = require('zappa') port, ->
	@get '/':  ->
		@render index : {'name' : 'world'}
	
	@view index: ->
		@title = 'Greetz'
		
		h1 "Demo site"
		p "Hello " + @name

	@view layout: ->
		doctype 5
		html ->
			head ->
				title @title
				link rel: "stylesheet", href: "/base.css"
			body @body
	
	@css '/base.css' : '''
			body {
				margin-left: auto;
				margin-right: auto;
				width:80%;
				font-family: sans-serif;
				margin-top: 2em;
			}
		'''
