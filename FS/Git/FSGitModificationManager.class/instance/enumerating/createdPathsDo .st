
!FSGitModificationManager methodsFor: 'enumerating' stamp: 'CamilloBruni 7/5/2011 13:17'!
createdPathsDo: aBlock	
	| tree |
	createdPaths associations do: [ :assoc | 
		tree := self treeAt: assoc key. 
		assoc value do: [ :path |
			aBlock 
				value: tree
				value: path ] ]! !
