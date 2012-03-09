
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 7/24/2010 15:13'!
delete
	"Deletes the repository irrevocably."
	
	GitRepositoryDeleteRequest signal
		ifTrue: [ self baseDir delete ]! !
