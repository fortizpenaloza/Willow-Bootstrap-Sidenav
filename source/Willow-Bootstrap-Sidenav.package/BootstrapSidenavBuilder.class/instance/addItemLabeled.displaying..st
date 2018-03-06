configuring
addItemLabeled: aLabel displaying: aRenderable

	| collapsedWebView |

	collapsedWebView := IdentifiedWebView   
		forDivNamed: 'wrapper'
		containing: aRenderable
		applying: [ :container | container addClass bootstrap collapse + container addClass bootstrap collapsedItem ].

	self addItemLabeled: aLabel uncollapsingOnClick: collapsedWebView