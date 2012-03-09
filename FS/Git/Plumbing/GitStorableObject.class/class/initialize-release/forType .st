
!GitStorableObject class methodsFor: 'initialize-release' stamp: 'MaxLeske 8/11/2011 23:02'!
forType: aString  
 ^ self allSubclasses
       detect: [ :class | aString isNil not and: [ class typeCode = aString ] ]
       ifNone: [ GitInvalidObjectError signal: 
		'Could not load object. Invalid type code: ', aString printString ]! !
