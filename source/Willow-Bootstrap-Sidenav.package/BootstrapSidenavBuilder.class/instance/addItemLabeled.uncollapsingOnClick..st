private-configuring
addItemLabeled: aLabel uncollapsingOnClick: aCollapsedWebView

	items
		add: [ :list :canvas | 
			aCollapsedWebView identifyIn: canvas.
			canvas
				render:
					(self
						itemOn: (LinkWebView labeled: aLabel applying: [ :link |  ])
						containedIn: list
						uncollapsingOnClick: aCollapsedWebView);
				render: aCollapsedWebView ]