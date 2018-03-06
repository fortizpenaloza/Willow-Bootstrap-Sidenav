accessing
contentView
	
	currentView := [ :canvas | canvas render: 'Hello world!' ].

	contentView := IdentifiedWebView forDivNamed: 'content' containing: [:canvas | canvas render: currentView ].

	^ [ :canvas | 
	canvas
		render: self sidenav;
		render:
			(GenericContainerWebView
				wrapping: contentView
				applying: [ :container | container addClass bootstrap containerFluid ]) ]