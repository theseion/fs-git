
!FSGitSetWrapper methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 8/1/2011 17:05'!
printOn: aStream
	aStream << self class name.
	aStream << '('.
	set do: [ :path| aStream << path basename]
		separatedBy: [ aStream << ', '].
	aStream << ')'.! !
