
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 8/12/2011 09:05'!
testTags
	| firstCommit tag tags |
	firstCommit := repository head parents first.
	tag := GitTag
		makeLightWeightTag: 'tag1'
		for: firstCommit
		in: repository.
	
	tags := repository tags.
	self assert: tags size = 1.
	self assert: tags first name = 'tag1'.
	self assert: tags first object = firstCommit! !
