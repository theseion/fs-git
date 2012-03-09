
!GitDeltaInterpreter methodsFor: 'executing' stamp: 'tonyg 2/23/2010 12:20'!
run
	[commands atEnd] whileFalse: [self runNextCommand]! !
