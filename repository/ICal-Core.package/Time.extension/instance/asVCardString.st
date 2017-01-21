*ICal-Core
asVCardString
	| nanosPart |
	nanosPart := self nanoSecond > 0 
		ifTrue: [(self nanoSecond / 10e8) asFloat asString copyWithoutFirst]
		ifFalse: [''].
	^ self print24 , nanosPart