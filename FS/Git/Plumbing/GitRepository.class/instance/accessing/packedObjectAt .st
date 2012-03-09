
!GitRepository methodsFor: 'accessing' stamp: 'MaxLeske 5/9/2010 11:49'!
packedObjectAt: objectName
	| object |
	self packsDo: [ :each |
					object := each objectAt: objectName.
					^object ifNotNil: [^ object] ].
	^ nil! !
