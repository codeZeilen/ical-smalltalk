*ICal-Core
asOldICalString
	^self replaceStrings: (Array 
		 with: ',' -> '\,'
		 with: ';' -> '\;'
		 with: '\' -> '\\'
		 with: Character lf asString -> '=0A' 
		 with: Character cr asString -> '=0D')