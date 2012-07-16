
port = Number(process.env.PORT or 3000)

hello = require('zappajs') port, ->
	@get '/':  -> @redirect '/hello/world'

	@get '/hello': -> @render question : {}

	@get '/hello/:name': -> @render greeting : {"name" : @params.name}
	
	@view greeting: ->
		@title = 'Greetings to the people'

		h1 "Greeting"

		p "Hello #{@name}"

	@view question: ->
		@title = 'Who are you?'

		h1 "Who are you?"

		form method: "POST", action: '/hello', ->
			input type: "text"
			button type: "submit", -> "Greet"

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
