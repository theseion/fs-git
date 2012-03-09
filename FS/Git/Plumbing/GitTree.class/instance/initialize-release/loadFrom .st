
!GitTree methodsFor: 'initialize-release' stamp: 'MaxLeske 6/26/2010 16:35'!
loadFrom: aStream
	| entry |
	[aStream atEnd] 
		whileFalse: [entry := (GitTreeEntry in: repository) loadFrom: aStream.
			self putEntry: entry].
	^self! !
