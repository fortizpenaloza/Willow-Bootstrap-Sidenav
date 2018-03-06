accessing
dashboardLink

	| dashboardLink |
	
	dashboardLink := self componentSupplier
		asynchronicLinkLabeled: 'Dashboard'
		applying: [ :link |  ].

	dashboardLink onTrigger
		evaluate: [ currentView := [ :canvas | 
			canvas
				render:
					'Yes, I''m supposed to be a dashboard, what do you expect? It''s a demo application!' ] ];
		render: contentView.
		
	^ dashboardLink