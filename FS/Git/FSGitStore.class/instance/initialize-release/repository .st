
!FSGitStore methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/15/2011 18:38'!
repository: aGitRepository
	repository := aGitRepository.
	modManager repository: repository.
	revision ifNil: [ self revision: repository head ].! !
