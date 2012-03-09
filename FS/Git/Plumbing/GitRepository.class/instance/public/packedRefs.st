
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 10/29/2010 07:36'!
packedRefs
	| packedRefs dictionary hexHash refName stream |
	packedRefs := self baseDir resolve: 'packed-refs'.
	packedRefs exists ifFalse: [^ nil].
	
	dictionary := Dictionary new.
	stream := ReadStream on: 
		(packedRefs readStreamDo: [ :str | str contents asString ]).
	[ stream atEnd ] whileFalse: [
		stream peek = $#
			ifTrue: [ stream upTo: Character lf ]
			ifFalse: [
				hexHash := stream upTo: Character space.
				refName := stream upTo: Character lf.
				dictionary at: refName put: (GitObjectSignature from: hexHash) ] ].
	^ dictionary! !
