building
buildApplying: aComponentCommand

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render: self brandWebView;
				render: 'burger button';
				render: (self renderElementsOn: canvas) ]
		applying: [ :container | container addClass bootstrap sidenav ]