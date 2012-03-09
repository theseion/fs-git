
!GitObjectNotFoundError class methodsFor: 'exceptioninstantiator' stamp: 'MaxLeske 8/11/2011 22:05'!
signal: aString with: data
	^ self new
		signal: aString;
		data: data! !
