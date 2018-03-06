building
renderItemsOn: canvas

	^ GenericContainerWebView
		wrapping: [ | list |
			list := canvas unorderedList.
			list
				id: self sidenavListIdentifier;
				class: BootstrapCssStyles sidenavList;
				class: BootstrapCssStyles collapse;
				with: [ items do: [ :anElement | anElement cull: list cull: canvas ] ] ]
		applying: [ :container | container addClass bootstrap sidenavListContainer ]