
!GitRepository methodsFor: 'public' stamp: 'CamilloBruni 6/22/2011 05:05'!
branches
"Answers a dictionary of all GitCommit objects referenced in '/refs/heads'."

	| dictionary heads |
	dictionary := Dictionary new.
	self headsDir exists ifFalse: [ ^ dictionary ].
	heads := self headsDir children.
	heads isEmpty
		ifFalse: [ heads do: [ :each |
			dictionary at: each basename put: 
				(each readStreamDo: [ :stream |
					self objectNamed: stream contents asString ]) ] ]
		ifTrue: [ | packedRefs | 
			packedRefs := self packedRefs .
			packedRefs ifNil: [ ^ dictionary ].
			packedRefs keysAndValuesDo: [ :refName :refSignature | 
				(refName includesSubString: 'heads') ifTrue: [ 
					dictionary 
						at: refName
						put: (self objectWithSignature: refSignature) ] ] ] .
		
	^ dictionary! !
