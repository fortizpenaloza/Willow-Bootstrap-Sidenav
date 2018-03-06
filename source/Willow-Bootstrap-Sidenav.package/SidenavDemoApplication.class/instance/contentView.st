accessing
contentView

	| grid |

	grid := self componentSupplier gridBuilder
		columnsPerRow: 1;
		columnsWidths: #(2 10);
		addContent: [ :canvas | canvas render: ' 2' ];
		addContent: [ :canvas | canvas render: '10' ];
		build.

	^ [ :canvas | 
	canvas
		render: self sidenav;
		render:
			(GenericContainerWebView
				wrapping: grid
				applying: [ :container | container addClass bootstrap containerFluid ]) ]