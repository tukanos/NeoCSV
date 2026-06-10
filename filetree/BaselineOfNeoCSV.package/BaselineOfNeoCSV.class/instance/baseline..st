baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Neo-CSV-Core';
				package: 'Neo-CSV-Tests' with: [ spec requires: #('Neo-CSV-Core') ];
				package: 'Neo-CSV-Magritte' with: [ spec requires: #('Neo-CSV-Core') ];
				group: 'default' with: #('core' 'tests');
				group: 'Core' with: #('Neo-CSV-Core');
				group: 'core' with: #('Core');
				group: 'Magritte' with: #('Neo-CSV-Magritte');
				group: 'magritte' with: #('Magritte');
				group: 'Tests' with: #('Neo-CSV-Tests');
				group: 'tests' with: #('Tests') ].
	spec
		for: #gemstone
		do: [ spec
				package: 'Neo-CSV-GemStone-Core'
				with: [ spec requires: #('Neo-CSV-Core') ];
				package: 'Neo-CSV-GemStone-Tests'
				with: [ spec requires: #('Neo-CSV-Tests') ].
			  spec
				group: 'Core' with: #('Neo-CSV-GemStone-Core');
				group: 'Tests' with: #('Neo-CSV-GemStone-Tests') ].
	spec
		for: #pharo
		do: [ spec
				package: 'Neo-CSV-Pharo-Tests'
				with: [ spec requires: #('Neo-CSV-Tests') ].
			  spec
				group: 'Tests' with: #('Neo-CSV-Pharo-Tests') ]