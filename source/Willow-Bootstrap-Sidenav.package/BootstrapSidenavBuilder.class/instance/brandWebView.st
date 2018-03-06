building
brandWebView

	^ GenericContainerWebView
		wrapping: 'Brand logo'
		applying: [ :container | container addClass bootstrap brand ]