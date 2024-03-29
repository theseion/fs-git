
!GitRepository methodsFor: 'public' stamp: 'CamilloBruni 1/23/2012 20:13'!
tags
	|  referencedObjects tags tagRefs packedRefs |
	
	tags := OrderedCollection new.
	
	self tagsDir exists ifFalse: [ ^ tags ].
	
	referencedObjects := self collectTagsFromPackedRefs.
	referencedObjects addAll: self collectTagsFromLooseRefs.
	
	referencedObjects keysAndValuesDo: [ :name :object |
		tags add: (object species = GitCommit
			ifTrue: [ "this is a lightweight tag"
				GitTag new
					name: name;
					object: object;
					yourself ]
			ifFalse: [ "this is a full tag and will be loaded later"
				 object ]) ].
	
	^ tags! !
