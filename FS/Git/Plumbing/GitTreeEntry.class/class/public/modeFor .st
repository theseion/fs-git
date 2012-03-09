
!GitTreeEntry class methodsFor: 'public' stamp: 'MaxLeske 7/21/2010 18:59'!
modeFor: aReference
	^ aReference isDirectory 
		ifTrue: [ self dirMode ]
		ifFalse: [ self fileMode ]! !
