
!MCGitWriter methodsFor: 'syncing' stamp: 'CamilloBruni 8/9/2011 15:42'!
syncPackagesAt: aPath
	aPath directories do: [ :directory|
		(directory basename endsWith: '.cls')
			ifFalse: [ self syncPackageAt: directory ]
			ifTrue: [	self syncClassAt: directory ]].! !
