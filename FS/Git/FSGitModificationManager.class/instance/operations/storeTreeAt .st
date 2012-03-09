
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 8/1/2011 17:10'!
storeTreeAt: aPath
	aPath isRoot ifTrue: [ ^ self ].
	"bubble up the tree hierarchy and save all of them"
	self storeTreeAt: aPath parent.
	self storeTree: (self treeAt: aPath).! !
