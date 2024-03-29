
!GitTag methodsFor: 'loading' stamp: 'MaxLeske 8/12/2011 08:28'!
loadKey: key value: value
	key = 'object' ifTrue: [ object := repository objectNamed: value. ^ self ].
	key = 'type' ifTrue: [ self assert: object typeCode = value. ^ self ].
	key = 'tag' ifTrue: [ name := value. ^ self ].
	key = 'tagger' ifTrue: [ tagger := GitStamp fromString: value. ^ self ].
	"Otherwise it's treated generically."
	^ super loadKey: key value: value! !
