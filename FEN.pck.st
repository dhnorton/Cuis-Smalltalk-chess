'From Cuis 5.0 of 7 November 2016 [latest update: #3329] on 23 June 2018 at 12:03:12 pm'!
'Description Extract position records from a file and write an individual *.fen file for each group of records.'!
!provides: 'FEN' 1 8!
SystemOrganization addCategory: #FEN!


!classDefinition: #InFen category: #FEN!
Object subclass: #InFen
	instanceVariableNames: 'directory file ser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'InFen class' category: #FEN!
InFen class
	instanceVariableNames: ''!


!InFen commentStamp: 'dhn 6/19/2018 17:24:41' prior: 0!
Extract position records from a file and write an individual *.fen file for each group of records. The file is compatible with Xboard in that the first record defines the position of the pieces. The remaining records from the group follow in their original sequence.

"
(InFen new: 'chess/m8n/m8n2.txt') write.
"!

!InFen methodsFor: 'I/O' stamp: 'dhn 6/23/2018 11:31:04'!
baseName
	"Answer the base name for output files"
	| dot |
	
	dot _ file indexOf: $. ifAbsent: [].
	^ (FillInTheBlankMorph
		request: 'Base name for output files?'
		initialAnswer: (file copyFrom: 1 to: dot - 1)
		centerAt: Display center
		onCancelReturn: ''
		acceptOnCR: true)! !

!InFen methodsFor: 'I/O' stamp: 'dhn 6/19/2018 21:43:41'!
outNameFor: base
	"Answer a file name, which includes base with a serial number appended plus the '.fen' extension"
	
	ser _ ser + 1.
	^ String streamContents: [:str |
		str  
			nextPutAll: base;
			nextPut: $-.
		ser printOn: str length: 3 zeroPadded: true.
		str nextPutAll: '.fen']! !

!InFen methodsFor: 'I/O' stamp: 'dhn 6/23/2018 12:00:04'!
write
	"Write a *fen file for each group of position records"
	| base outName ios line col nr ostr |

	base _ self baseName.
	ser _ 0.
	col _ OrderedCollection new.
	ios _ ReadStream on: (directory / file) asString asFileEntry fileContents.
	line _ ''.
	[line isNil ] whileFalse: [
		line _ ios nextLine.
		[line = '' or: [line isNil]] whileFalse: [
			nr _ (line select: [:a | a = $/]) size.
			(nr = 7)
				ifTrue: [
					outName _ self outNameFor: base.
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

!InFen methodsFor: 'accessing' stamp: 'dhn 6/23/2018 11:31:39'!
file: anObject
	"Set the value of file to anObject"
	
	file _ anObject! !

!InFen methodsFor: 'accessing' stamp: 'dhn 6/23/2018 11:27:12'!
ser: anObject
	"Set the value of ser to anObject"
	
	ser _ anObject! !

!InFen methodsFor: 'checklist' stamp: 'dhn 6/22/2018 22:00:18'!
list: aNum
	"Answer a checklist of file serial numbers, in columns aNum long"
	| cols arr ix mbrs |

	cols _ ((ser - 1) / aNum) ceiling.
	arr _ Array new: cols.
	ix _ (0 to: cols -1) asArray.
	mbrs _ (1 to: aNum) asArray.
	1 to: cols do: [:n | | delta |
		delta _ aNum * (ix at: n).
		arr at: n put: (mbrs collect: [:a | a + delta])].
	^ String streamContents: [:string |
		1 to: aNum do: [:row |
			1 to: cols do: [:col |
				(col > 1) ifTrue: [string nextPutAll: '        '].
				((arr at: col) at: row) printOn: string length: 3 zeroPadded: true].
			string newLine]]
! !

!InFen methodsFor: 'checklist' stamp: 'dhn 6/22/2018 19:56:12'!
take: aNum
	"Answer the first aNum members of the receiver"
	
	^ self copyFrom: 1 to: (aNum min: self size)! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 11:57:33'!
new: aString
	"Establish an instance of this class, initialized with the name of a relative path/file named aString.
	Example:
	
		(InFen new: 'chess/m8n/m8n2.txt') write.
	"
	| inst |
	
	inst _ self setup.
	inst file: aString.  "relative: where input and output will be"
	^ inst! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 11:55:15'!
setup
	"Establish an instance of this class"
	| x |
	
	x _ self new.
	DirectoryEntry roots.  "take no chances: ensure the base directory is '/' "
	x directory: DirectoryEntry currentDirectory.  "now at /home/<user>"
	^ x! !
