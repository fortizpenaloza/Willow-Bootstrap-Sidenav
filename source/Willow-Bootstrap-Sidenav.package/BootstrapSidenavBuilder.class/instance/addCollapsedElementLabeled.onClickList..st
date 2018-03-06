configuring
addCollapsedElementLabeled: aLabel onClickList: links

	| linkView collapsedUnorderedList |
	
	collapsedUnorderedList := UnorderedListWebView
		applying: [ :list | list addClass bootstrap collapse + list addClass bootstrap collapsedItem ]
		listing: links
		applyingToEach: [ :link |  ].

	"self addCollapsedElementLabeled: onClickShow: "linkView := LinkWebView labeled: aLabel applying: [ :link |  ].
	
	elements
		add: [ :list :canvas | 
			collapsedUnorderedList identifyIn: canvas.
			canvas
				render:
					(ListItemWebView
						itemizing: linkView
						containedIn: list
						applying: [ :item :constants | 
							(item setData: constants bootstrap toggle to: constants css collapse)
								+ (item setData: constants bootstrap target to: (self targetFrom: collapsedUnorderedList))
								+ item addClass bootstrap collapsed ]);
				render: collapsedUnorderedList ]