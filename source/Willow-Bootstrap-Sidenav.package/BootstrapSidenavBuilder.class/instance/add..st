configuring
add: aLinkWebView

	elements
		add: [ :list :canvas | 
			canvas
				render: (ListItemWebView itemizing: aLinkWebView containedIn: list applying: [ :item |  ]) ]