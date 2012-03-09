
!GitProtocolCapabilities methodsFor: 'capabilities' stamp: 'CamilloBruni 1/15/2012 22:31'!
shallow

	"This capability adds 'deepen', 'shallow' and 'unshallow' commands to
the  fetch-pack/upload-pack protocol so clients can request shallow
clones."
	
	^ self enable: #'shallow'! !
