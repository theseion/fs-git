
!GitObjectSignature methodsFor: 'private' stamp: 'MaxLeske 5/9/2010 14:38'!
hexHashFrom: aByteString
	"#hex will omit a leading 0. If that's the case insert leading 0."
	^aByteString asByteArray hex asLowercase forceTo: 40 paddingStartWith: $0! !
