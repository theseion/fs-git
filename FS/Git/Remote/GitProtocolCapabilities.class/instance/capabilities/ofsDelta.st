
!GitProtocolCapabilities methodsFor: 'capabilities' stamp: 'CamilloBruni 1/15/2012 22:31'!
ofsDelta

	"Server can send, and client understand PACKv2 with delta referring to
its base by position in pack rather than by an obj-id.  That is, they can
send/read OBJ_OFS_DELTA (aka type 6) in a packfile."
	
	^ self enable: #'ofs-delta'! !
