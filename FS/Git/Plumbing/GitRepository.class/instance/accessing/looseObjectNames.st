
!GitRepository methodsFor: 'accessing' stamp: 'tonyg 2/23/2010 10:55'!
looseObjectNames
	| r |
	r := OrderedCollection new.
	self looseObjectNamesDo: [ :n | r add: n ].
	^ r! !
