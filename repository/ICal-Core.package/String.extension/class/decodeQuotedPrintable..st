*ICal-Core
decodeQuotedPrintable: aString
	"String >> #decodeQuotedPrintable is borken, not really a surprise, is it?"
	^String streamContents: [ :writeStream |
		| readStream |
		readStream := aString readStream.
		[ readStream atEnd ] whileFalse: [
			| next |
			next := readStream next.
			next = $=
				ifTrue: [ | nextCharacters |
					nextCharacters := readStream next: 2.
					nextCharacters asString = String crlf
						ifFalse: [writeStream nextPut: (Character value: (Integer readFrom: nextCharacters readStream base: 16))] ]
				ifFalse: [ writeStream nextPut: next ] ] ]