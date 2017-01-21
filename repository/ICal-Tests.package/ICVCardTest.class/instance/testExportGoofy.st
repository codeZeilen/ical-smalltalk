testing-exporting
testExportGoofy
	"This test may FAIL because of Dictionary ordering.
	The Dictionary parameter in:
		ICVCardGenerator>>email:parameters:
	means that parameters may appear in a different order then
	the expected result has used.
	"
	| cards exporter str |
	cards := ICCardHandParser parseVCardString: self goofyCardString.
	cards anyOne photo: nil.
	
	exporter := ICVCardExporter cards: cards.
	exporter export.
	str := self goofyCardStringExport.

	self assert: exporter dataStream contents = str.
	self assert: exporter dataStream contents equals: str.
