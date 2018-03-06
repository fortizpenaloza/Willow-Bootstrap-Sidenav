private-configuring
itemOn: linkView containedIn: list uncollapsingOnClick: aCollapsedWebView

	^ ListItemWebView
		itemizing: linkView
		containedIn: list
		applying: [ :item :constants | 
			(item setData: constants bootstrap toggle to: constants css collapse)
				+ (item setData: constants bootstrap target to: (self targetFrom: aCollapsedWebView)) + item addClass bootstrap collapsed ]