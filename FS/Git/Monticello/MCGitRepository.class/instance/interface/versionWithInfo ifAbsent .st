
!MCGitRepository methodsFor: 'interface' stamp: 'Camillobruni 8/18/2011 12:13'!
versionWithInfo: aVersionInfo ifAbsent: aBlock
	(self includesVersionNamed: aVersionInfo name)
		ifFalse: [ ^ aBlock value].
	^ self versionFromFileNamed: aVersionInfo name.! !
