'From Cuis 5.0 of 7 November 2016 [latest update: #3384] on 2 August 2018 at 7:20:25 pm'!
'Description Utilities for studying chess.'!
!provides: 'FEN' 1 49!
SystemOrganization addCategory: #FEN!


!classDefinition: #Board category: #FEN!
ActiveModel subclass: #Board
	instanceVariableNames: 'pieces counter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Board class' category: #FEN!
Board class
	instanceVariableNames: ''!

!classDefinition: #ChessStream category: #FEN!
ReadStream subclass: #ChessStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'ChessStream class' category: #FEN!
ChessStream class
	instanceVariableNames: ''!

!classDefinition: #Count category: #FEN!
Object subclass: #Count
	instanceVariableNames: 'tally'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Count class' category: #FEN!
Count class
	instanceVariableNames: ''!

!classDefinition: #InFen category: #FEN!
Object subclass: #InFen
	instanceVariableNames: 'directory file ser total'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'InFen class' category: #FEN!
InFen class
	instanceVariableNames: ''!

!classDefinition: #Pgn category: #FEN!
Object subclass: #Pgn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Pgn class' category: #FEN!
Pgn class
	instanceVariableNames: ''!

!classDefinition: #Piece category: #FEN!
Object subclass: #Piece
	instanceVariableNames: 'position color dots move threat'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Piece class' category: #FEN!
Piece class
	instanceVariableNames: ''!

!classDefinition: #Bishop category: #FEN!
Piece subclass: #Bishop
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Bishop class' category: #FEN!
Bishop class
	instanceVariableNames: ''!

!classDefinition: #King category: #FEN!
Piece subclass: #King
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'King class' category: #FEN!
King class
	instanceVariableNames: ''!

!classDefinition: #Knight category: #FEN!
Piece subclass: #Knight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Knight class' category: #FEN!
Knight class
	instanceVariableNames: ''!

!classDefinition: #Pawn category: #FEN!
Piece subclass: #Pawn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Pawn class' category: #FEN!
Pawn class
	instanceVariableNames: ''!

!classDefinition: #Queen category: #FEN!
Piece subclass: #Queen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Queen class' category: #FEN!
Queen class
	instanceVariableNames: ''!

!classDefinition: #Rook category: #FEN!
Piece subclass: #Rook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Rook class' category: #FEN!
Rook class
	instanceVariableNames: ''!

!classDefinition: #Progress category: #FEN!
Object subclass: #Progress
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Progress class' category: #FEN!
Progress class
	instanceVariableNames: ''!


!Board commentStamp: '<historical>' prior: 0!
The chess board model.!

!ChessStream commentStamp: '<historical>' prior: 0!
A stream for removing notes and rankings from Chess Portable Game Notation (PGN).!

!Count commentStamp: '<historical>' prior: 0!
A counter with increment and reset methods.!

!InFen commentStamp: 'dhn 6/19/2018 17:24:41' prior: 0!
Extract position records from a file and write an individual *.fen file for each group of records. The file is compatible with Xboard in that the first record defines the position of the pieces. The remaining records from the group follow in their original sequence.

"
(InFen new: 'chess/m8n/m8n2.txt') write.
"!

!Pgn commentStamp: '<historical>' prior: 0!
Chess Portable Game Notation (PGN).!

!Piece commentStamp: '<historical>' prior: 0!
A chess piece.!

!Bishop commentStamp: '<historical>' prior: 0!
The bishop piece.!

!King commentStamp: '<historical>' prior: 0!
The king piece.!

!Knight commentStamp: '<historical>' prior: 0!
The knight piece.!

!Pawn commentStamp: '<historical>' prior: 0!
The pawn piece.!

!Queen commentStamp: '<historical>' prior: 0!
The queen piece.!

!Rook commentStamp: '<historical>' prior: 0!
The rook piece.!

!Progress commentStamp: 'dhn 7/14/2018 18:27:08' prior: 0!
Compute percentage (as a decimal) of a series of win-loss pairs, as x / (x + y).

Run the following, as an example:

Progress new percent:  #(
1 0
1 1
2 1
2 2
3 2
).
!

!Board methodsFor: 'initialization' stamp: 'dhn 8/2/2018 16:29:12'!
initialize
	"Place the chess pieces in their initial position"
	
	counter _ Count new.
	pieces _ self organize: (OrderedCollection new
		addAll: (Piece type: #Rook color: 'b' at: {1@1. 8@1});
		addAll: (Piece type: #Rook color: 'w' at: {1@8. 8@8});
		addAll: (Piece type: #Knight color: 'b' at: {2@1. 7@1});
		addAll: (Piece type: #Knight color: 'w' at: {2@8. 7@8});
		addAll: (Piece type: #Bishop color: 'b' at: {3@1. 6@1});
		addAll: (Piece type: #Bishop color: 'w' at: {3@8. 6@8});
		addAll: (Piece type: #Queen color: 'b' at: {4@1});
		addAll: (Piece type: #Queen color: 'w' at: {4@8});
		addAll: (Piece type: #King color: 'b' at: {5@1});
		addAll: (Piece type: #King color: 'w' at: {5@8});
		addAll: Piece pawns;
		yourself).
	pieces do: [:ea |
		ea ifNotNil: [ea move: ea pruneMove]]! !

!Board methodsFor: 'initialization' stamp: 'dhn 7/22/2018 16:58:48'!
organize: aCollection
	"Answer the arrangement of aCollection in chess order"
	| arr |
	
	arr _ Array2D newSize: 8@8.
	aCollection do: [:ea | 	arr at: ea position put: ea].
	^ arr! !

!Board methodsFor: 'translate' stamp: 'dhn 8/2/2018 14:36:10'!
fen
	"Answer the basic FEN string for pieces ivar"
	
	^ self fen: pieces! !

!Board methodsFor: 'translate' stamp: 'dhn 7/23/2018 15:33:25'!
fen: aCollection
	"Answer the basic FEN string for aCollection"
	
	^ String streamContents: [:str |
		1 to: 8 do: [:ix |
			counter reset.
			1 to: 8 do: [:iy |
				(aCollection i: ix j: iy)
					ifNil: [counter increment]
					ifNotNil: [
						str 
							nextPutAll: counter printString;
							nextPutAll: (aCollection i: ix j: iy) printString]].
			str nextPutAll: counter printString.
			ix < 8 ifTrue: [str nextPutAll: '/']]]! !

!Board methodsFor: 'accessing' stamp: 'dhn 7/22/2018 16:11:46'!
pieces
	"Answer the value of pieces"

	^ pieces! !

!Board methodsFor: 'accessing' stamp: 'dhn 7/22/2018 16:11:46'!
pieces: anObject
	"Set the value of pieces"

	pieces _ anObject! !

!ChessStream methodsFor: 'filtering' stamp: 'dhn 7/31/2018 16:45:13'!
unBrace
	"Remove content enclosed by {} "
	
	[self peek = ${] whileTrue: [
		[self atEnd == false and: [self next ~= $}]] whileTrue]! !

!ChessStream methodsFor: 'filtering' stamp: 'dhn 7/31/2018 16:51:30'!
unBracket
	"Remove content enclosed by [] "
	
	[self peek = $[ ] whileTrue: [
		[self atEnd == false and: [self next ~= $] ]] whileTrue]! !

!ChessStream methodsFor: 'filtering' stamp: 'dhn 7/31/2018 18:28:10'!
unParens
	"Remove content enclosed by () "
	
	[self peek = $( ] whileTrue: [
		[self atEnd == false and: [self next ~= $) ]] whileTrue]! !

!Count methodsFor: 'display' stamp: 'dhn 7/23/2018 15:44:23'!
printString
	"Answer an empty string if zero else as string and reset"
	
	tally = 0
		ifTrue: [^ '']
		ifFalse: [ | temp |
			temp _ tally.
			self reset.
			^ temp asString]
! !

!Count methodsFor: 'operation' stamp: 'dhn 7/23/2018 15:39:59'!
increment
	"Advance the counter"

	tally _ tally + 1! !

!Count methodsFor: 'operation' stamp: 'dhn 7/23/2018 15:40:28'!
reset
	"Reset the counter"
	
	tally _ 0! !

!Count methodsFor: 'initialization' stamp: 'dhn 7/23/2018 15:24:44'!
initialize
	
	tally _ 0! !

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

!InFen methodsFor: 'accessing' stamp: 'dhn 6/23/2018 12:26:47'!
total: anObject
	"Set the value of total to anObject"
	
	total _ anObject! !

!InFen methodsFor: 'checklist' stamp: 'dhn 6/24/2018 12:03:35'!
checkList
	"Answer a checklist of file serial numbers, in columns 'self class columnDepth' long"
	| depth cols arr ix mbrs part1 part2 element |

	depth _ self class columnDepth.
	cols _ (total / depth) ceiling.
	arr _ Array new: cols.
	ix _ (0 to: cols -1) asArray.
	mbrs _ (1 to: depth) asArray.
	1 to: cols do: [:n | | delta |
		delta _ depth * (ix at: n).
		arr at: n put: (mbrs collect: [:a | a + delta])].
	
	part1 _ arr last select: [:n | n <= total].
	part2 _ #().
	depth - part1 size timesRepeat: [part2 _ part2, {self columnPad}].
	arr at: arr size put: part1, part2.
	
	(file, '.ckl') asFileEntry forceWriteStreamDo: [:string |
		string nextPutAll: (file, '.ckl'); newLine; newLine.
		1 to: depth do: [:row |
			1 to: cols do: [:col |
				string nextPutAll: self class columnSpacer.
				(element _ (arr at: col) at: row) isNumber
					ifTrue: [element printOn: string length: self columnPad size zeroPadded: true]
					ifFalse: [string nextPutAll: element]].
			string newLine]]
! !

!InFen methodsFor: 'checklist' stamp: 'dhn 6/24/2018 11:59:57'!
columnPad
	"Answer the replacement for numbers > total in the last column"
	"The receiver's size will determine the length of every column element"
	
	^ '   '! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 12:10:28'!
columnDepth
	"Answer the column length for the checklist"
	
	^ 60! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 13:12:02'!
columnSpacer
	"Answer the space between columns for the checklist"
	
	^ '    '! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 12:08:26'!
new: aString
	"Answer an instance of this class, initialized with the name of a relative path/file named aString.
	Example:
	
		(InFen new: 'chess/m8n/m8n2.txt') write.
	"
	| inst |
	
	inst _ self setup.
	inst file: aString.  "relative: where input and output will be"
	^ inst! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 12:46:06'!
new: aString for: aNum
	"Answer an instance of this class, initialized with the name of a relative path/file named aString.
	Example:
	
		(InFen new: 'chess/m8n/m8n2' for: 221) checkList.
	"
	| inst |
	
	inst _ self setup.
	inst file: aString.  "relative: where input and output will be"

	inst total: aNum.
	^ inst! !

!InFen class methodsFor: 'instance creation' stamp: 'dhn 6/23/2018 11:55:15'!
setup
	"Establish an instance of this class"
	| x |
	
	x _ self new.
	DirectoryEntry roots.  "take no chances: ensure the base directory is '/' "
	x directory: DirectoryEntry currentDirectory.  "now at /home/<user>"
	^ x! !

!Pgn methodsFor: 'parsing' stamp: 'dhn 8/2/2018 14:11:59'!
movesFrom: aString
	"Transform aString into a collection of moves"
	"Odd members of the collection are white moves, even are black moves"
	| col moves |
	
	col _ OrderedCollection new.
	moves _ OrderedCollection new.
	col addAll: (aString withoutBraces :: withoutParens :: withoutBrackets :: withoutCrLf :: findTokens: '. ').
	col do: [:ea |
		(ea allSatisfy: [:a | a isDigit])
			ifFalse: [moves add: ea]].
	^ moves! !

!Pgn methodsFor: 'printing' stamp: 'dhn 8/1/2018 21:07:09'!
printMoves: aCollection
	"Answer a list of the moves in aCollection as numbered pairs"
	| ix |
	
	ix _ 1.
	^ String streamContents: [ :str |
		1 to: aCollection size do: [:n |
			n odd
				ifTrue: [
					str 
						nextPutAll: ix printString;
						nextPutAll: '. ';
						nextPutAll: (aCollection at: n);
						nextPut: $ .
					ix _ ix + 1]
				ifFalse: [
					str
						nextPutAll: (aCollection at: n); newLine]]]! !

!Pgn class methodsFor: 'testing' stamp: 'dhn 7/31/2018 10:51:50'!
example1
	"Answer a seven-move example of Chess in PGN"
	
	^ '1. e4 e5 2. Nc3 Nc6 3. Bc4 Bc5 4. Qg4 Qf6 5. Nd5 Qxf2+ 6. Kd1 Na5 7. Nh3 d6'! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 17:43:56'!
color
	"Answer the value of color"

	^ color! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 17:43:56'!
color: anObject
	"Set the value of color"

	color _ anObject! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 15:15:52'!
move
	"Answer the possible move positions, relative to current position, without capture"
	
	^ move 
		ifNotNil: [move]
		ifNil: [OrderedCollection new]! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 15:17:01'!
move: aCollection
	"Set the possible move positions, relative to current position"
	
	move _ aCollection! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 17:43:56'!
position
	"Answer the value of position"

	^ position! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 17:43:56'!
position: anObject
	"Set the value of position"

	position _ anObject! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 18:12:07'!
rank
	"Answer the rank (row) of the current position"
	
	^ position y! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 15:11:02'!
threat
	"Answer the positions threatened, relative to current position"
	
	^ threat 
		ifNotNil: [threat]
		ifNil: [OrderedCollection new]! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 15:06:37'!
threat: aCollection
	"Set the positions threatened, relative to current position"
	
	threat _ aCollection! !

!Piece methodsFor: 'operating' stamp: 'dhn 8/2/2018 19:12:05'!
onBoard: aCollection
	"Answer moves from aCollection which theoretically remain on the board"

	^ aCollection select: [:a | | pos |
		pos _ a + position.
		pos >= (1@1) and: pos <= (8@8)]! !

!Piece methodsFor: 'operating' stamp: 'dhn 7/22/2018 22:02:48'!
printString
	"Answer the string representing the piece for FEN"
	
	^ self color = 'b'
		ifTrue: [self class symbol]
		ifFalse: [self class symbol asUppercase]! !

!Piece methodsFor: 'operating' stamp: 'dhn 8/2/2018 16:29:57'!
pruneMove
	"Answer the actual moves possible, without capture, relative to the current position"
	| col |
	
	col _ OrderedCollection new.
	
	"eliminate off-board moves"
	col addAll: (self onBoard: self scope); yourself.
	^ col! !

!Piece methodsFor: 'testing' stamp: 'dhn 7/20/2018 21:51:44'!
clean
	"Remove the dots"
	
	dots do: [:ea | ea delete]! !

!Piece methodsFor: 'testing' stamp: 'dhn 7/20/2018 22:23:11'!
view
	"Show the scope as an array of ellipses."
	| p |
	
	dots _ OrderedCollection new.
	dots add: (p _ (EllipseMorph new openInWorld morphPosition: 900@450)).
	p color: Color green.
	self threat do: [:ea | dots add: (EllipseMorph new openInWorld morphPosition: 900@450 + (40 * ea))]! !

!Piece class methodsFor: 'definition' stamp: 'dhn 7/20/2018 19:42:15'!
horizontal
	"Answer the greatest possible horizontal reach"
	| col |

	col _ OrderedCollection new.
	self reach do: [:ea | col add: ea@0].
	^col! !

!Piece class methodsFor: 'definition' stamp: 'dhn 7/20/2018 20:32:07'!
leftDiagonal
	"Answer the greatest possible left diagonal reach"
	| col |

	col _ OrderedCollection new.
	self reach do: [:ea | col add: ea@ea].
	^col! !

!Piece class methodsFor: 'definition' stamp: 'dhn 7/20/2018 19:34:59'!
reach
	"Answer the maximum theoretical movement of a piece in any direction"
	
	^ (-7 to: -1) asOrderedCollection, (1 to: 7) asOrderedCollection! !

!Piece class methodsFor: 'definition' stamp: 'dhn 7/20/2018 20:32:52'!
rightDiagonal
	"Answer the greatest possible right diagonal reach"
	| col |

	col _ OrderedCollection new.
	self reach do: [:ea | col add: ea negated@ea].
	^col! !

!Piece class methodsFor: 'definition' stamp: 'dhn 7/20/2018 19:44:14'!
vertical
	"Answer the greatest possible vertical reach"
	| col |

	col _ OrderedCollection new.
	self reach do: [:ea | col add: 0@ea].
	^col! !

!Piece class methodsFor: 'instance creation' stamp: 'dhn 7/22/2018 11:54:29'!
new: aPosition color: aColor
	"Answer an instance of this class at aPosition, color aColor"
	
	^ self basicNew
		position: aPosition;
		color: aColor! !

!Piece class methodsFor: 'instance creation' stamp: 'dhn 7/22/2018 15:45:19'!
pawns
	"Answer the pawns in their starting positions"
	
	^ OrderedCollection new
		addAll: (self pawns: 'b');
		addAll: (self pawns: 'w');
		yourself! !

!Piece class methodsFor: 'instance creation' stamp: 'dhn 7/22/2018 15:49:45'!
pawns: color
	"Answer the pawns of color in their starting positions"
	| rank col |
	
	rank _ color = 'b' ifTrue: [2] ifFalse: [7].
	col _ OrderedCollection new.
	1 to: 8 do: [:a | col add: (Pawn new: a@rank color: color)].
	^ col! !

!Piece class methodsFor: 'instance creation' stamp: 'dhn 7/22/2018 15:28:27'!
type: aSymbol color: aString at: aCollection
	"Answer chess pieces of class aSymbol with color aString at positions in aCollection"
	| col |
	
	col _ OrderedCollection new.
	aCollection do: [ :ea |
		col add: ((Smalltalk at: aSymbol) new: ea color: aString)].
	^ col! !

!Bishop methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:53:14'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	^ Piece rightDiagonal, Piece leftDiagonal! !

!Bishop class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:15:16'!
symbol
	"Answer the letter symbol for self"
	
	^ 'b'! !

!King methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:52:53'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	^ OrderedCollection new
		add: 1@1; 
		add: 1@0; 
		add: 1@-1; 
		add: 0@1; 
		add: 0@-1; 
		add: -1@1; 
		add: -1@0; 
		add: -1@-1; 
		yourself! !

!King class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:16:24'!
symbol
	"Answer the letter symbol for self"
	
	^ 'k'! !

!Knight methodsFor: 'operating' stamp: 'dhn 8/2/2018 18:42:12'!
scope
	"Answer the theoretical scope of movement, relative to the current position"

	^ OrderedCollection new
		add: 1@-2; 
		add: 2@-1; 
		add: 2@1; 
		add: 1@2; 
		add: -1@2; 
		add: -2@1; 
		add: -2@-1; 
		add: -1@-2; 
		yourself! !

!Knight class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:16:36'!
symbol
	"Answer the letter symbol for self"
	
	^ 'n'! !

!Pawn methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:52:10'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	color = 'w'
		ifTrue: [ "white pawn"
			self rank = 7
				ifTrue: [^ OrderedCollection with: 0@-1 with: 0@-2]
				ifFalse: [^ OrderedCollection with: 0@-1]]
		ifFalse: [ "black pawn"
			self rank = 2
				ifTrue: [^ OrderedCollection with: 0@1 with: 0@2]
				ifFalse: [^ OrderedCollection with: 0@1]]! !

!Pawn methodsFor: 'operating' stamp: 'dhn 7/20/2018 18:40:11'!
threat
	"Answer the positions threatened, relative to current position"
	
	^ color = 'w'
		ifTrue: [OrderedCollection with: -1@-1 with: 1@-1]
		ifFalse: [OrderedCollection with: -1@1 with: 1@1]! !

!Pawn class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:13:16'!
symbol
	"Answer the letter symbol for self"
	
	^ 'p'! !

!Queen methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:50:41'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	^ Piece rightDiagonal, Piece leftDiagonal, Piece vertical, Piece horizontal! !

!Queen class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:15:43'!
symbol
	"Answer the letter symbol for self"
	
	^ 'q'! !

!Rook methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:51:33'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	^ Piece vertical, Piece horizontal! !

!Rook class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:14:39'!
symbol
	"Answer the letter symbol for self"
	
	^ 'r'! !

!Progress methodsFor: 'operating' stamp: 'dhn 7/13/2018 19:43:12'!
percent: arr
	"Answer the 'percent' progression, computed from pairs of points in array arr"
	| odd even col ix |
	
	col _ OrderedCollection new.
	ix _ 0.
	arr do: [:ea |
		ix _ ix + 1.
		ix even
			ifTrue: [
				even _ ea.
				col addLast: (odd / (odd + even))]
			ifFalse: [odd _ ea].
		].
	^ String streamContents: [ :str |
		col do: [:p | 
			str 
				nextPutAll: (p printStringFractionDigits: 2);
				nextPut: $ ]
		]! !
