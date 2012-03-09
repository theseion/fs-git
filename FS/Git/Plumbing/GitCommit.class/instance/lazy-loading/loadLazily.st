
!GitCommit methodsFor: 'lazy-loading' stamp: 'CamilloBruni 7/11/2011 15:26'!
loadLazily
	| stored |
	self isLoaded ifTrue: [ ^ self ].
	self beLoaded: true.
	repository ifNil: [ 
		^ self ].
	
	stored := repository objectWithSignature: self signature.
	stored beLoaded: true.
	
	self 
		message: (stored message ifNil: [ '' ]);
		properties: (stored properties ifNil: [ OrderedCollection new ]);
		tree: stored tree;
		author: stored author;
		committer: stored committer;
		parents: (stored parents ifNil: [ OrderedCollection new ])! !
