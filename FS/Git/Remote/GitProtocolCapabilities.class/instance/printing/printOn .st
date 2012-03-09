
!GitProtocolCapabilities methodsFor: 'printing' stamp: 'CamilloBruni 1/15/2012 22:23'!
printOn: aStream
	capabilities 
		do: [ :capability|
			aStream nextPutAll: capability ]
		separatedBy: [ aStream nextPut: $ ].! !
