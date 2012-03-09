
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 8/11/2011 22:17'!
packedObjectWithSignature: aGitObjectSignature
	^ self packedObjectWithSignature: aGitObjectSignature
			ifAbsent: [ 
				GitObjectNotFoundError 
					signal: 'Could not find packed object in pack index file.'
					with: aGitObjectSignature hexHash asString ].! !
