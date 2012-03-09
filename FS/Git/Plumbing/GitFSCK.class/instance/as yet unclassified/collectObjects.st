
!GitFSCK methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/22/2011 05:01'!
collectObjects
	all := repository looseObjects.
	self flag: 'TODO: collect packed objects'.
	all := all reject: [ :each| each species == GitTag]! !
