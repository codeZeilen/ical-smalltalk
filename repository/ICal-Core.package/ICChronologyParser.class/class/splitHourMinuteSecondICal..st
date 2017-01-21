time
splitHourMinuteSecondICal: aString
	aString ifEmpty: [^ Array new: 3 withAll: 0].
	^Array
		with: (aString first: 2) asInteger
		with: (aString copyFrom: 3 to: 4) asInteger
		with: (aString copyFrom: 5 to: 6) asInteger.