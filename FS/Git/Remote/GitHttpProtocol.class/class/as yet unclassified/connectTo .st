
!GitHttpProtocol class methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 1/15/2012 22:54'!
connectTo: aUrl
	self flag: 'TODO: check for fallback on dumb http'.
	^ GitDumbHtppProtocol basicNew
		initializeWith: aUrl! !
