building
brandWebView

	^ GenericContainerWebView
		wrapping: brandView content
		applying: [ :container | container addClass bootstrap brand ]