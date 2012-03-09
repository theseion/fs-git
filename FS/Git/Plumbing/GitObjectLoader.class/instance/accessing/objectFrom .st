
!GitObjectLoader methodsFor: 'accessing' stamp: 'MaxLeske 8/11/2011 22:00'!
objectFrom: aStream
	repository ifNil: [ ^ self error: 'Instance variable #repository needs to be initialized.' ].
	^ GitStorableObject loadFrom: aStream from: repository! !
