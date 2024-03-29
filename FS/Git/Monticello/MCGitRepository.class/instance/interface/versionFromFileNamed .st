
!MCGitRepository methodsFor: 'interface' stamp: 'CamilloBruni 1/23/2012 22:28'!
versionFromFileNamed: aString
	| tag filesystem package |
	
	tag := (aString copyAfterLast: $.) isAllDigits
		ifTrue:  [ aString ]
		ifFalse: [ aString copyUpToLast: $. ].
	filesystem := self repository tagNamed: tag.
	"filesystem := self repository head."
	package := (aString copyUpToLast: $.) copyUpToLast: $-.
	
	"^ (MCGitReader on: filesystem root / package) version"
	^ (MCGitReader on: filesystem root / tag) version! !
