
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 7/5/2011 13:19'!
storeDeletedTrees
	"store the changed trees"
	deletedPaths keysDo: [ :path | self storeTreeAt: path].! !
