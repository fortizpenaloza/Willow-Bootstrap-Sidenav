accessing
firstSubItemLink
	^ self componentSupplier
		asynchronicLinkLabeled: 'First sub item'
		applying: [ :link |  ]