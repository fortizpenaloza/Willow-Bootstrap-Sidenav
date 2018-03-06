configuring
addItem: aRenderable

	items
		add: [ :list :canvas | 
			canvas
				render: (ListItemWebView itemizing: aRenderable containedIn: list applying: [ :item |  ]) ]