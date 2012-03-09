
!GitTree methodsFor: 'validation' stamp: 'CamilloBruni 6/22/2011 03:52'!
validate
	super validate.
	self entries do: [:entry|
		entry validate].! !
