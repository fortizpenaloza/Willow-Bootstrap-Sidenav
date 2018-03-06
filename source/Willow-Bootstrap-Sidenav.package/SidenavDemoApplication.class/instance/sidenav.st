accessing
sidenav

	| dashboardLink builder uiElementsLink |

	dashboardLink := self componentSupplier
		asynchronicLinkLabeled: 'Dashboard'
		applying: [ :link |  ].

	uiElementsLink := self componentSupplier
		asynchronicLinkLabeled: 'Favs'
		applying: [ :link |  ].

	builder := self componentSupplier sidenavBuilder.
	builder
		"addElementLabeled: 'Dashboard' onClickDo: [ :interpreter |  ];"
		addElement: dashboardLink;
		addCollapsedElementLabeled: 'Canvas'
			onClickShow: [ :canvas | canvas render: 'Here you could add anything' ];
		addCollapsedElementLabeled: 'Sub items'
			onClickList: {uiElementsLink}.
			
		"addElementLabeled: 'Submenu' openingCollapsedElements: [ :builder | builder addElementLabeled: 'sub menu 1'  onClickDo: []; build. ] "

	^ builder build