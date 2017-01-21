processing-properties
rdate: aString parameters: aDictionary
	| dates |
	dates := self createMulitValue: aString parameters: aDictionary type: DateAndTime.
	self topStack recurrenceDates: dates