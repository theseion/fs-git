
!GitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 6/21/2011 05:37'!
looseObjects
	| r |
	r := OrderedCollection new.
	self looseObjectsDo: [ :n | r add: n ].
	^ r! !
