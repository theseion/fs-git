
!GitTaglikeObjectTests methodsFor: 'tests' stamp: 'CamilloBruni 7/11/2011 17:35'!
testLoadingAssociations
	| taglikeObject |
	taglikeObject := GitTaglikeObject new.
	self assert: taglikeObject properties isEmpty.
	
	taglikeObject loadKey: 'keyname' value: 'keyobject'.
	self assert: (taglikeObject properties includesKey: 'keyname').
	self assert: (taglikeObject properties at: 'keyname') == 'keyobject'
	
	! !
