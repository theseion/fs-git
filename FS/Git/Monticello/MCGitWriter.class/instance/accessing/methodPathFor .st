
!MCGitWriter methodsFor: 'accessing' stamp: 'CamilloBruni 3/9/2012 16:53'!
methodPathFor: aMethodDefinition
	| path |
	
	path := self classPathFor: (aMethodDefinition classIsMeta 
											ifTrue: [ aMethodDefinition actualClass theNonMetaClass ] 
											ifFalse: [ aMethodDefinition actualClass ]).
	
	aMethodDefinition actualClass.
	path := path / (aMethodDefinition classIsMeta 
											ifTrue:  [ 'class' ] 
											ifFalse: [ 'instance' ]).
	path := path / aMethodDefinition category / 
				(self encodeSpecialSelectorCharacters: aMethodDefinition selector), 'st'.
	^ path! !
