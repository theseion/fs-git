
!GitTree methodsFor: 'testing' stamp: 'MaxLeske 6/8/2010 22:36'!
size
	| total |
	total := 0.
	self entries do: [:each | total := total + (each size)].
	^total! !
