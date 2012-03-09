
!GitObjectSignature methodsFor: 'private' stamp: 'MaxLeske 5/9/2010 13:32'!
from: aHexHash
	integerHash := Integer readFrom: aHexHash asString asUppercase base: 16! !
