versions
version11: spec
	<version: '1.1' imports: #('1.1-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: 'Initial version after spliting into Core and Tests packages'.
			spec author: 'YanniChiu'.
			spec timestamp: '25/01/2013 01:03'.
			spec
				project: 'CommandShell' with: '1.0';
				project: 'Chronos' with: #stable.
			spec
				package: 'ICal-Core' with: 'ICal-Core-PaulDeBruicker.5';
				package: 'ICal-Tests' with: 'ICal-Tests-PaulDeBruicker.6';
				package: 'ICalChronos' with: 'ICalChronos-PaulDeBruicker.8';
				package: 'ICalMagritte' with: 'ICalMagritte-pmm.10' ].
	spec for: #gemstone do: [ spec package: 'ICal-Core.Gemstone' with: 'ICal-Core.Gemstone-PaulDeBruicker.5' ]