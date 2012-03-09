
!GitTree methodsFor: 'printing' stamp: 'CamilloBruni 7/5/2011 16:54'!
printOn: aStream
	super printOn: aStream.
	aStream << '( '.
	entries keys 
		do: [ :name| aStream << name]
		separatedBy: [ aStream << ', '].
	aStream << ' )'! !
