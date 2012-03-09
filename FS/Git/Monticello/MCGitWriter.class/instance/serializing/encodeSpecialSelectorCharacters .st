
!MCGitWriter methodsFor: 'serializing' stamp: 'CamilloBruni 3/9/2012 16:56'!
encodeSpecialSelectorCharacters: aSelector
	^ String streamContents: [ :s| 
		aSelector do: [ :char|
			(EscapeCharacters includesKey: char)
				ifTrue: [ s nextPutAll: (EscapeCharacters at: char) ]
				ifFalse:[ s nextPut: char ]]]! !
