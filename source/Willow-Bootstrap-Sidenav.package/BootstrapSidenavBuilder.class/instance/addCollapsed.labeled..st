configuring
addCollapsed: aRenderable labeled: aLabel

	| collapsedWebView |

	collapsedWebView := IdentifiedWebView
		forDivNamed: 'collapsed'
		containing: aRenderable
		applying: [ :container | container addClass bootstrap collapse + container addClass bootstrap collapsedItem ].

	self addElementLabeled: aLabel uncollapsingOnClick: collapsedWebView