
!MCGitWriterTest methodsFor: 'tests' stamp: 'CamilloBruni 2/1/2012 23:48'!
testMethodPathForMetaClass
	"Most basic test, just making sure that it does not raise errors"
	| writer |
	writer := MCGitWriter new.
	writer stream: (FSLocator imageDirectory).
	self shouldnt: [ writer methodPathFor: (Integer class>>#new) methodReference ] raise: Error.  ! !
