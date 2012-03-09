
!FSGitLazyLoadingTests methodsFor: 'helpers' stamp: 'MaxLeske 10/18/2010 16:07'!
commit: message
	[ [ workingCopy commit: message ]
		on: GitStampNameRequest 
		do: [ :req | req resume: 'Homer Simpson' ] ]
			on: GitStampEmailRequest 
			do: [ :req | req resume: 'homer@nuke.com' ]! !
