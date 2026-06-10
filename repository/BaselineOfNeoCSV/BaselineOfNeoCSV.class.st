"
I am BaselineOfNeoCSV, a way to load the code of the NeoCSV project.
I am a BaselineOf.
"
Class {
	#name : #BaselineOfNeoCSV,
	#superclass : #BaselineOf,
	#category : #BaselineOfNeoCSV
}

{ #category : #baselines }
BaselineOfNeoCSV >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Neo-CSV-Core';
				package: 'Neo-CSV-Tests' with: [ spec requires: #('Neo-CSV-Core') ];
				package: 'Neo-CSV-Magritte' with: [ spec requires: #('Neo-CSV-Core') ];
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('Neo-CSV-Core');
				group: 'core' with: #('Core');
				group: 'Magritte' with: #('Neo-CSV-Magritte');
				group: 'magritte' with: #('Magritte');
				group: 'Tests' with: #('Neo-CSV-Tests');
				group: 'tests' with: #('Tests') ]
]
