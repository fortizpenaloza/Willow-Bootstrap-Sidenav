accessing
notificationWithBadge
	^ [ :canvas | 
	canvas span
		class: 'badge';
		with: 5.
	canvas render: 'Notifications' ]