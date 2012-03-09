
!GitProtocolCapabilities methodsFor: 'capabilities' stamp: 'CamilloBruni 1/15/2012 22:31'!
sideBand64k

	"Comment see GitProtocolCapabilities >> # sideBand:"

	self disable: #'side-band'.
	^ self enable: #'side-band-64k'.! !
