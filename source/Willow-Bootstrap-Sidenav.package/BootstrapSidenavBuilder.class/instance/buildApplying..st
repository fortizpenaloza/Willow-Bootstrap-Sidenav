building
buildApplying: aComponentCommand

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render: self brandWebView;
				render: self uncollapseButton;
				render: (self renderItemsOn: canvas) ]
		applying: [ :container | container addClass bootstrap sidenav ]