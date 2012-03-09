
!GitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 7/13/2011 18:50'!
resolveLooseRef: refPath
	| target |
	refPath exists ifFalse: [ ^ nil ].
	target := refPath readStreamDo: [ :stream | stream contents asString ].
	(target beginsWith: 'ref:') 
		ifTrue: [^ self resolveRef: (target allButFirst: 4) withBlanksTrimmed].
	^ GitObjectSignature from: target substrings first "Ignore other junk after the hash."! !
