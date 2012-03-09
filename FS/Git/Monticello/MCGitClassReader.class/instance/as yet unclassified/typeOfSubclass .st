
!MCGitClassReader methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/12/2011 16:51'!
typeOfSubclass: aSymbol
	#(
		(subclass: normal)
		(variableSubclass: variable)
		(variableByteSubclass: bytes)
		(variableWordSubclass: words)
		(weakSubclass: weak)
		) do: [:ea | ea first = aSymbol ifTrue: [^ ea second]].
	self error: 'Unrecognized class definition'! !
