accessing
sidenav

	| dashboardLink builder subItem |

	dashboardLink := self componentSupplier
		asynchronicLinkLabeled: 'Dashboard'
		applying: [ :link |  ].

	subItem := self componentSupplier
		asynchronicLinkLabeled: 'Sub item'
		applying: [ :link |  ].

	builder := self componentSupplier sidenavBuilder.
	^ builder
		setBrandViewTo: [ :canvas | canvas render: 'Logo' ];
		add: dashboardLink;
		addCollapsed: [ :canvas | 
			canvas
				render:
					(self componentSupplier gridBuilder
						columnsPerRow: 2;
						columnsWidths: #(2 10);
						addContent: '1';
						addContent: 'May i put anything in here';
						build) ]
			labeled: 'Canvas';
		addCollapsedListOf: {subItem} labeled: 'Sub items';
		build