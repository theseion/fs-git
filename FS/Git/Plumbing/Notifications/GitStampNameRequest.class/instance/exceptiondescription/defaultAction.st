
!GitStampNameRequest methodsFor: 'exceptiondescription' stamp: 'MaxLeske 7/13/2010 14:50'!
defaultAction
	| name |
	name := GitStamp requestName.
	GitStamp defaultName: name.
	^ name! !
