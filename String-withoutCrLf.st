'From Cuis 5.0 of 7 November 2016 [latest update: #3384] on 1 August 2018 at 7:01:55 pm'!

!String methodsFor: 'converting' stamp: 'dhn 8/1/2018 18:52:28'!
withoutCrLf
	"Answer the receiver with cr and lf replaced by a blank"

	^ String streamContents: [:str |
		self do: [:a |
			(a = Character cr or: [a = Character lf])
				ifTrue: [str nextPut: $ ]
				ifFalse: [str nextPut: a]]]! !
