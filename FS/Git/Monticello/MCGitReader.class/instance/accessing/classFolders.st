
!MCGitReader methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 23:21'!
classFolders
	^ self reference glob: [ :ref| 
		ref isDirectory and: [ ref extension = 'class' ]]! !
