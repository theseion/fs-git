
!GitTree methodsFor: 'saving' stamp: 'CamilloBruni 6/22/2011 05:47'!
saveTo: aStream
	entries values sorted do: [:e | e saveTo: aStream].! !
