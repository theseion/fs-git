
!FSGitStore methodsFor: 'internal' stamp: 'CamilloBruni 7/15/2011 21:07'!
loadFromRepository: aPath
	"try to load the given path from the repositry into our cache"
	|currentGitTree|
	currentGitTree := self loadGitTreeAt: aPath.
	"path doesn't exist in the repository either"
	currentGitTree ifNil: [ ^ self ].
	
			! !
