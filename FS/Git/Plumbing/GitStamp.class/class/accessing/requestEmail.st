
!GitStamp class methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 18:57'!
requestEmail
	self flag: 'this is basically a nightmare...'.
	((Smalltalk class canUnderstand: #isHeadless) and: [ Smalltalk isHeadless ])
		ifTrue: [ self error: 'Please set the default email using GitStamp defaultEmail:' ].
	^UIManager default 
		request: 'Please provide a valid e-mail address so that you can be contacted if necessary.'
		initialAnswer: 'user@domain.ext'! !
