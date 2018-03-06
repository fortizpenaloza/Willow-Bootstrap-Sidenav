private-configuring
addElementLabeled: aLabel uncollapsingOnClick: aCollapsedWebView

	elements
		add: [ :list :canvas | 
			aCollapsedWebView identifyIn: canvas.
			canvas
				render:
					(self
						itemOn: (LinkWebView labeled: aLabel applying: [ :link |  ])
						containedIn: list
						uncollapsingOnClick: aCollapsedWebView);
				render: aCollapsedWebView ]