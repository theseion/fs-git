
!GitProtocolCapabilities methodsFor: 'capabilities' stamp: 'CamilloBruni 1/15/2012 22:31'!
sideBand

	"Comment see GitProtocolCapabilities >> # sideBand:"
	
	self disable: #'side-band-64k'.
	^ self enable: #'side-band'.! !
