building
buildApplying: aComponentCommand

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render: self brandWebView;
				render: (BootstrapHamburgerButton targeting: 'lala');
				render: (self renderElementsOn: canvas) ]
		applying: [ :container | container addClass bootstrap sidenav ]