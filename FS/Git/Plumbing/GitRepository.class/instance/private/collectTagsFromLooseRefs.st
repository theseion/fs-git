
!GitRepository methodsFor: 'private' stamp: 'MaxLeske 8/12/2011 09:34'!
collectTagsFromLooseRefs
	| tags |
	tags := Dictionary new.
	
	self tagsDir children do: [ :ref |
		ref readStreamDo: [ :stream |
			tags 
				at: ref basename
				put: (self objectNamed: stream contents asString) ] ].
		
	^ tags! !
