
!GitTreeEntry methodsFor: 'comparing' stamp: 'MaxLeske 7/24/2010 17:04'!
<= other
	"For sorting reasons, directories are compared
	with a virtual slash appended."
	| myTail otherTail |
	myTail := otherTail := ''.
	self mode = (self class dirMode)
		ifTrue: [ myTail := '/' ].
	other mode = (self class dirMode)
		ifTrue: [otherTail := '/' ].
	
	^ self entryName, myTail <= (other entryName, otherTail)! !
