
!MCGitClassReader methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/12/2011 13:38'!
readFrom: aFile
	classFolder := aFile.
	self loadDefinitions.
	^ definitions! !
