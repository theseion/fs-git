
!MCGitWriter methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 19:40'!
classPathForPackage: packageName class: className
	|path|
	
	path := self reference.
	
	($- split: packageName) do: [ :categorySegment|
		path := path / categorySegment].
	
	path := path / className, 'class'.
	path ensureDirectory.
	
	^ path! !
