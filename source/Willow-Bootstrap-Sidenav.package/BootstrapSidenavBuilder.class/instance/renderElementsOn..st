building
renderElementsOn: canvas

	^ GenericContainerWebView
		wrapping: [ | list |

			list := canvas unorderedList.
			list
				class: BootstrapCssStyles sidenavList;
				class: BootstrapCssStyles collapse;
				with: [ elements do: [ :anElement | anElement cull: list cull: canvas ] ] ]
		applying: [ :container | container addClass bootstrap sidenavListContainer ]