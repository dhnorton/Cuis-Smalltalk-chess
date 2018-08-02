'From Cuis 5.0 of 7 November 2016 [latest update: #3384] on 1 August 2018 at 7:02:09 pm'!

!String methodsFor: 'converting' stamp: 'dhn 8/1/2018 18:26:34'!
withoutParens
	"Remove content enclosed by ()  in self"
	| in out char |
	
	in _ ChessStream on: self.
	out _ WriteStream on: (String new: self size).
	[ in atEnd ] whileFalse: [
		in peek = $(
			ifTrue: [in unParens] 	"Absorb (...)(...)"
			ifFalse: [
				(char _ in next) ~= $)
					ifTrue: [out nextPut: char]]].
	^ out contents! !
