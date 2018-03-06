accessing
sidenav
	^ self componentSupplier sidenavBuilder
		setBrandViewTo: [ :canvas | canvas render: 'Logo' ];
		addItem: 'Simply text';
		addItem: self notificationWithBadge;
		addItem: self dashboardLink;
		addItemLabeled: 'Canvas'
			displaying: [ :canvas | 
			canvas
				render:
					(self componentSupplier gridBuilder
						columnsPerRow: 2;
						columnsWidths: #(2 10);
						addContent: '2';
						addContent: 'Just testing the bootstrap grid';
						build) ];
		addItemLabeled: 'Sub items'
			displayingAll:
			{self firstSubItemLink.
			self secondSubItemLink};
		build