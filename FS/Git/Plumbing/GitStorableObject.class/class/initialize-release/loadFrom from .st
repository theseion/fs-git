
!GitStorableObject class methodsFor: 'initialize-release' stamp: 'MaxLeske 6/26/2010 16:45'!
loadFrom: aStream from: aGitRepository
	| code length limitedStream object |
	code := (aStream upTo: Character space asInteger) asString.
	length := (aStream upTo: 0) asString asInteger.
	limitedStream := ReadStream on: (aStream next: length).
	object := (self forType: code) in: aGitRepository.
	^object loadFrom: limitedStream! !
