
!MCGitReader methodsFor: 'accessing' stamp: 'Camillobruni 8/18/2011 17:01'!
package
	self halt.
	^ package ifNil: [ package := self loadPackage ]! !
