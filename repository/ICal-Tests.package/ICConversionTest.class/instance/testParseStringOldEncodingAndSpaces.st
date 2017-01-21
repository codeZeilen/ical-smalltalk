testing
testParseStringOldEncodingAndSpaces
	"Testing for decoding approximately correspondig to :
	https://tools.ietf.org/html/rfc1521#page-18.
	One difference is that crlf is encoded as =0D=0A"
	| string value |
	ICCalendarVersion
		use: 1.0
		during: [
			string := '123 Winding Way=0D=0A=' , String crlf ,
'Any Town, CA 12345=0D=0A=' , String crlf ,
'USA'.
			value := String fromICalString: string  parameters: (Dictionary new add: 'ENCODING' -> 'QUOTED-PRINTABLE'; yourself).
			self assert: '123 Winding Way', String crlf, 
						'Any Town, CA 12345', String crlf, 
						'USA' 
				equals: value.
			self assert: '123 Winding Way=0D=0AAny Town\\, CA 12345=0D=0AUSA'
				equals: value asICalString ]