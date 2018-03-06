configuring
addCollapsedElementLabeled: aLabel onClickShow: aRenderable

	| linkView collapsedWebView |

	linkView := LinkWebView labeled: aLabel applying: [ :link |  ].

	collapsedWebView := IdentifiedWebView
		forDivNamed: 'collapsed'
		containing: aRenderable
		applying: [ :container | 
			container addClass bootstrap collapse
				+ container addClass bootstrap collapsedItem ].

	elements
		add: [ :list :canvas | 
			collapsedWebView identifyIn: canvas.
			canvas
				render:
					(ListItemWebView
						itemizing: linkView
						containedIn: list
						applying: [ :item :constants | 
							(item setData: constants bootstrap toggle to: constants css collapse)
								+
									(item
										setData: constants bootstrap target
										to: (self targetFrom: collapsedWebView))
								+ item addClass bootstrap collapsed ]);
				render: collapsedWebView ]