configuring
addCollapsedListOf: linksWebViews labeled: aLabel

	| collapsedUnorderedList |
	
	collapsedUnorderedList := UnorderedListWebView
		applying: [ :list | list addClass bootstrap collapse + list addClass bootstrap collapsedItem ]
		listing: linksWebViews
		applyingToEach: [ :link |  ].
	
	self addElementLabeled: aLabel uncollapsingOnClick: collapsedUnorderedList.
