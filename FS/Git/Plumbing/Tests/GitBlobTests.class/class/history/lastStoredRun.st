
!GitBlobTests class methodsFor: 'history' stamp: 'CamilloBruni 8/1/2011 16:49'!
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new))); add: (#passed->((Set new) add: #testRetrievingBytes; yourself)); add: (#failures->((Set new))); add: (#timeStamp->(DateAndTime basicNew instVarAt: 1 put: 60559; instVarAt: 2 put: (Duration seconds: 7200 nanoSeconds: 0); instVarAt: 3 put: 2455775; instVarAt: 4 put: 0; yourself)); yourself)! !
