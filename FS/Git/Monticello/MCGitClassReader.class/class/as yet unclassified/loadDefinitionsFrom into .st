
!MCGitClassReader class methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/12/2011 13:39'!
loadDefinitionsFrom: aFile into: aStream
	^ self new 
		definitions: aStream;
		readFrom: aFile! !
