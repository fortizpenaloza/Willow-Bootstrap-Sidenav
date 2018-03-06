configuring
addElement: aLink

	elements
		add: [ :list :canvas | 
			canvas
				render: (ListItemWebView itemizing: aLink containedIn: list applying: [ :item |  ]) ]