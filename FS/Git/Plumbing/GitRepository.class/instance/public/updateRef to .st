
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 7/23/2010 16:58'!
updateRef: refPath to: aGitObjectSignature
"Updates the file denoted by refPath to reference the object with the sha1 name in aGitObjectSignature.
If the file denoted by refPath does not yet exist it will be created."

	self basicUpdateRef: refPath to: aGitObjectSignature hexHash! !
