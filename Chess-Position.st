!classDefinition: #InFen category: #'Chess-Position'!
Object subclass: #InFen
	instanceVariableNames: 'directory inFile ser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chess-Position'!
!InFen commentStamp: 'dhn 6/19/2018 17:24:41' prior: 0!
Extract position records from a file and write an individual *.fen file for each group of records. The file is compatible with Xboard in that the first record defines the position of the pieces. The remaining records from the group follow in their original sequence.

"
(InFen new: 'chess/m8n/m8n2.txt') write.
"!


!InFen methodsFor: 'I/O' stamp: 'dhn 6/19/2018 20:34:12'!
baseName
	"Answer the base name for output files"
	| dot |
	
	dot _ inFile indexOf: $. ifAbsent: [].
	^ (FillInTheBlankMorph
		request: 'Base name for output files?'
		initialAnswer: (inFile copyFrom: 1 to: dot - 1)
		centerAt: Display center
		onCancelReturn: ''
		acceptOnCR: true)! !

!InFen methodsFor: 'I/O' stamp: 'dhn 6/19/2018 19:06:23'!
outNameFor: base
	"Answer a file name which includes base with serial number aNumber"
	
	ser _ ser + 1.
	^ String streamContents: [:str |
		str  
			nextPutAll: base;
			nextPut: $-.
		ser printOn: str length: 3 zeroPadded: true.
		str nextPutAll: '.fen']! !

!InFen methodsFor: 'I/O' stamp: 'dhn 6/19/2018 20:43:48'!
write
	"Write a *fen file for each group of position records"
	| bn outName ios line col nr ostr |

	bn _ self baseName.
	ser _ 0.
	col _ OrderedCollection new.
	ios _ ReadStream on: (directory / inFile) asString asFileEntry fileContents.
	line _ ''.
	[line isNil ] whileFalse: [
		line _ ios nextLine.
		[line = '' or: [line isNil]] whileFalse: [
			nr _ (line select: [:a | a = $/]) size.
			(nr = 7)
				ifTrue: [
					outName _ self outNameFor: bn.
					outName asFileEntry 	forceWriteStreamDo: [ :out | out nextPutAll: line; newLine]]
				ifFalse: [col add: line].
			line _ ios nextLine].
			(col isEmpty not) 
				ifTrue: [
					ostr _ String new writeStream.
					col do: [:n | ostr nextPutAll: n; newLine].
					outName asFileEntry appendContents: ostr contents.
					col _ OrderedCollection new]]! !


!InFen methodsFor: 'accessing' stamp: 'dhn 6/18/2018 22:03:03'!
directory: anObject
	"Set the value of directory to anObject"
	
	directory _ anObject! !

!InFen methodsFor: 'accessing' stamp: 'dhn 6/18/2018 21:51:35'!
inFile: anObject
	"Set the value of inFile to anObject"
	
	inFile _ anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InFen class' category: #'Chess-Position'!
InFen class
	instanceVariableNames: ''!

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/19/2018 16:39:36'!
new: aString
	"Establish an instance of this class, initialized with the name of a file aString"
	| x |
	
	x _ self new.
	x inFile: aString.
	DirectoryEntry roots.
	x directory: DirectoryEntry currentDirectory.
	^ x! !
