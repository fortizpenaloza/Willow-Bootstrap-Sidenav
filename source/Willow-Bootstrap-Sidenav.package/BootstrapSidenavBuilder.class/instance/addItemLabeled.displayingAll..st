configuring
addItemLabeled: aLabel displayingAll: linksWebViews

	| collapsedUnorderedList |
	
	collapsedUnorderedList := UnorderedListWebView
		applying: [ :list | list addClass bootstrap collapse + list addClass bootstrap collapsedItem ]
		listing: linksWebViews
		applyingToEach: [ :link |  ].
	
	self addItemLabeled: aLabel uncollapsingOnClick: collapsedUnorderedList.
