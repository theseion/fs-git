
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 8/1/2011 19:23'!
readObjectType
	"001 - OBJ_COMMIT
	010 - OBJ_TREE
	011 - OBJ_BLOB
	100 - OBJ_TAG
	110 - OBJ_OFS_DELT (new packfile format)
	111 - OBJ_REF_DELTA (old packfile format)"
	^ file next bitAnd: 2r01110000.! !
