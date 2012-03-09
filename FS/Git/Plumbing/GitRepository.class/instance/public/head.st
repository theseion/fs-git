
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 8/11/2011 21:22'!
head
"Answers the GitCommit object referenced in / via 'HEAD'."

	| signature |
	signature := self headRef.
	signature 
		ifNil: [ ^ nil ].
	^ self objectWithSignature: signature.! !
