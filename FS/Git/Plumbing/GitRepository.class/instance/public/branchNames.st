
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 10/29/2010 22:17'!
branchNames
	| branchRefs branchNames |
	branchRefs := self headsDir children.
	branchRefs isEmpty
		ifFalse: [ ^ branchRefs collect: [ :ref | ref basename ] ]
		ifTrue: [ | packedRefs |
			packedRefs := self packedRefs.
			packedRefs ifNil: [ ^ OrderedCollection new ].
			branchNames := OrderedCollection new.
			packedRefs keysAndValuesDo: [ :refName :refSignature | 
				(refName includesSubString: 'heads') ifTrue: [
					branchNames add: (refName subStrings: '/') last ] ].
			^ branchNames ]! !
