
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 8/9/2011 20:19'!
storeTree: aTree 
	(storedObjects includes: aTree) ifTrue: [ ^ self ].
	storedObjects add: aTree.
	"don't store empty trees"
	aTree isEmpty ifFalse: [ repository storeObject: aTree ].! !
