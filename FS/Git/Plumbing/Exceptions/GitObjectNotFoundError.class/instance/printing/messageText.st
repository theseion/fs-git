
!GitObjectNotFoundError methodsFor: 'printing' stamp: 'MaxLeske 8/11/2011 22:07'!
messageText
	^ String streamContents: [ :stream |
		stream
			nextPutAll: messageText;
			nextPutAll: 'Known object data: ';
			nextPutAll: data printString ] ! !
