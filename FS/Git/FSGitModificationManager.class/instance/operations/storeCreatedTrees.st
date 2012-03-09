
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 7/5/2011 13:20'!
storeCreatedTrees
	createdPaths keysDo: [ :path | self storeTreeAt: path].
	"(createdPaths associations sorted: [ :assoc1 :assoc2 |
		assoc2 value maxSize <= assoc1 value maxSize ]) do: [ :assoc |
			self storeTreeAt: assoc key]."! !
