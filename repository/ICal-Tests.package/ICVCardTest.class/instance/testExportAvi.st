testing-exporting
testExportAvi

	| cards exporter str |
	cards := ICCardHandParser parseVCardString: self aviCardString.
	cards anyOne photo: nil.
	
	exporter := ICVCardExporter cards: cards.
	exporter export.
	str := self aviCardStringExport.

	self assert: exporter dataStream contents equals: str.

	exporter dataStream contents 
		keysAndValuesDo: [:index :value |
			self assert: value equals: (str at: index) ].
	