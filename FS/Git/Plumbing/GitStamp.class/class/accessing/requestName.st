
!GitStamp class methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 18:57'!
requestName
	self flag: 'this is basically a nightmare...'.
	((Smalltalk class canUnderstand: #isHeadless) and: [ Smalltalk isHeadless ])
		ifTrue: [ self error: 'Please set the default name using GitStamp defaultName:' ].
	^UIManager default 
		request: 'Please provide your full name to identify your actions.'
		initialAnswer: 'Firstname Lastname'! !
