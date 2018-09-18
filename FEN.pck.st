'From Cuis 5.0 of 7 November 2016 [latest update: #3429] on 18 September 2018 at 6:12:19 pm'!
'Description Utilities for studying chess.'!
!provides: 'FEN' 1 88!
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

!classDefinition: #OpeningModel category: #FEN!
ActiveModel subclass: #OpeningModel
	instanceVariableNames: 'listCollection openingsIndex selectedOpening'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'OpeningModel class' category: #FEN!
OpeningModel class
	instanceVariableNames: 'tree'!

!classDefinition: #ChessStream category: #FEN!
ReadStream subclass: #ChessStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'ChessStream class' category: #FEN!
ChessStream class
	instanceVariableNames: ''!

!classDefinition: #OpeningView category: #FEN!
WorkspaceWindow subclass: #OpeningView
	instanceVariableNames: 'textPane searchString listPane'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'OpeningView class' category: #FEN!
OpeningView class
	instanceVariableNames: ''!

!classDefinition: #ConvertECO category: #FEN!
Object subclass: #ConvertECO
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'ConvertECO class' category: #FEN!
ConvertECO class
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

!classDefinition: #Move category: #FEN!
Object subclass: #Move
	instanceVariableNames: 'side piece id take target type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FEN'!
!classDefinition: 'Move class' category: #FEN!
Move class
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
	instanceVariableNames: 'position color board dots range move threat'
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

!OpeningModel commentStamp: '<historical>' prior: 0!
A model for chess openings.!

!ChessStream commentStamp: '<historical>' prior: 0!
A stream for removing notes and rankings from Chess Portable Game Notation (PGN).!

!OpeningView commentStamp: '<historical>' prior: 0!
A view for retrieving chess openings.

OpeningView open.!

!ConvertECO commentStamp: '<historical>' prior: 0!
Convert lines from http://www.chessgames.com/chessecohelp.html to a collection in simple database form.!

!Count commentStamp: '<historical>' prior: 0!
A counter with increment and reset methods.!

!InFen commentStamp: 'dhn 6/19/2018 17:24:41' prior: 0!
Extract position records from a file and write an individual *.fen file for each group of records. The file is compatible with Xboard in that the first record defines the position of the pieces. The remaining records from the group follow in their original sequence.

"
(InFen new: 'chess/m8n/m8n2.txt') write.
"!

!Move commentStamp: 'dhn 8/9/2018 18:09:51' prior: 0!
Characteristics of a chess move. Instance variables as follows:

side - 'w' or 'b', white or black
piece - a symbol representing the piece making the move, including #Long and #Short for 'O-O-O' and 'O-O'
id - a further qualifier if needed to distinguish the piece
take - one of nil, 'x'
target - the PGN identification of the destination, a1...h8
type - one of nil, '+', or '#'!

!Pgn commentStamp: '<historical>' prior: 0!
Chess Portable Game Notation (PGN).!

!Piece commentStamp: 'dhn 8/4/2018 20:37:08' prior: 0!
A chess piece with the following variables, relative to position:

	range - the moves possible if it were the only piece on the board

	move - a proper subset of range consisting of unoccupied, unblocked spaces

	threat - a proper subset of range consisting of unblocked spaces occupied by the opponent!

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

!Board methodsFor: 'initialization' stamp: 'dhn 8/4/2018 20:03:20'!
fromFen: aString
	"Place the chess pieces in their initial position based on sString"
	| col i j pc |
	
	counter _ Count new.
	col _ OrderedCollection new.
	i _ j _ 1.
	aString do: [:ea | 
		ea isDigit 
			ifTrue: [i _ i + ea digitValue]
			ifFalse: [
				ea = $/
					ifTrue: [
						j _ j + 1.
						i _ 1]
					ifFalse: [
						pc _ (Board pieceTemplate at: ea) first.
						pc position: i@j.
						col add: pc.
						i _ i + 1]]].
	col do: [:ea |
			ea board: self.
			ea range: ea setRange].
	pieces _ self organize: col.
	pieces do: [:ea | ea ifNotNil: [ea potential]]! !

!Board methodsFor: 'initialization' stamp: 'dhn 8/2/2018 22:04:41'!
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
		ea ifNotNil: [
			ea board: self.
			ea range: ea setRange]]! !

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

!Board class methodsFor: 'initialization' stamp: 'dhn 8/4/2018 17:25:35'!
pieceTemplate
	"Translate a FEN piece character to a Piece template"
	
	^ Dictionary new
		at: $r put: (Piece type: #Rook color: 'b' at: {0@0});
		at: $R put: (Piece type: #Rook color: 'w' at: {0@0});
		at: $n put: (Piece type: #Knight color: 'b' at: {0@0});
		at: $N put: (Piece type: #Knight color: 'w' at: {0@0});
		at: $b put: (Piece type: #Bishop color: 'b' at: {0@0});
		at: $B put: (Piece type: #Bishop color: 'w' at: {0@0});
		at: $q put: (Piece type: #Queen color: 'b' at: {0@0});
		at: $Q put: (Piece type: #Queen color: 'w' at: {0@0});
		at: $k put: (Piece type: #King color: 'b' at: {0@0});
		at: $K put: (Piece type: #King color: 'w' at: {0@0});
		at: $p put: (Piece type: #Pawn color: 'b' at: {0@0});
		at: $P put: (Piece type: #Pawn color: 'w' at: {0@0});
		yourself
! !

!OpeningModel methodsFor: 'initialization' stamp: 'dhn 9/16/2018 21:11:10'!
initialize
	"Establish the list of Chess Openings"
	
	listCollection _ OrderedCollection new.
	self simple do: [:ea | listCollection add: ea second]! !

!OpeningModel methodsFor: 'initialization' stamp: 'dhn 9/16/2018 21:05:20'!
simple
	"Answer all ECO openings"
	
	^ #(
	#('1 b3' 'A01 Nimzovich-Larsen Attack') 
	#('1 f4' 'A02 Bird''s Opening') 
	#('1 f4 d5' 'A03 Bird''s Opening') 
	#('1 Nf3' 'A04 Reti Opening') 
	#('1 Nf3 Nf6' 'A05 Reti Opening') 
	#('1 Nf3 d5' 'A06 Reti Opening') 
	#('1 Nf3 d5 2 g3' 'A07 King''s Indian Attack') 
	#('1 Nf3 d5 2 g3 c5 3 Bg2' 'A08 King''s Indian Attack') 
	#('1 Nf3 d5 2 c4' 'A09 Reti Opening') 
	#('1 c4' 'A10 English') 
	#('1 c4 c6' 'A11 English, Caro-Kann Defensive System') 
	#('1 c4 c6 2 Nf3 d5 3 b3' 'A12 English with b3') 
	#('1 c4 e6' 'A13 English') 
	#('1 c4 e6 2 Nf3 d5 3 g3 Nf6 4 Bg2 Be7 5 O-O' 'A14 English') 
	#('1 c4 Nf6' 'A15 English') 
	#('1 c4 Nf6 2 Nc3' 'A16 English') 
	#('1 c4 Nf6 2 Nc3 e6' 'A17 English') 
	#('1 c4 Nf6 2 Nc3 e6 3 e4' 'A18 English, Mikenas-Carls') 
	#('1 c4 Nf6 2 Nc3 e6 3 e4 c5' 'A19 English, Mikenas-Carls, Sicilian Variation') 
	#('1 c4 e5' 'A20 English') 
	#('1 c4 e5 2 Nc3' 'A21 English') 
	#('1 c4 e5 2 Nc3 Nf6' 'A22 English') 
	#('1 c4 e5 2 Nc3 Nf6 3 g3 c6' 'A23 English, Bremen System, Keres Variation') 
	#('1 c4 e5 2 Nc3 Nf6 3 g3 g6' 'A24 English, Bremen System with ...g6') 
	#('1 c4 e5 2 Nc3 Nc6' 'A25 English') 
	#('1 c4 e5 2 Nc3 Nc6 3 g3 g6 4 Bg2 Bg7 5 d3 d6' 'A26 English') 
	#('1 c4 e5 2 Nc3 Nc6 3 Nf3' 'A27 English, Three Knights System') 
	#('1 c4 e5 2 Nc3 Nc6 3 Nf3 Nf6' 'A28 English') 
	#('1 c4 e5 2 Nc3 Nc6 3 Nf3 Nf6 4 g3' 'A29 English, Four Knights, Kingside Fianchetto') 
	#('1 c4 c5' 'A30 English, Symmetrical') 
	#('1 c4 c5 2 Nf3 Nf6 3 d4' 'A31 English, Symmetrical, Benoni Formation') 
	#('1 c4 c5 2 Nf3 Nf6 3 d4 cxd4 4 Nxd4 e6' 'A32 English, Symmetrical Variation') 
	#('1 c4 c5 2 Nf3 Nf6 3 d4 cxd4 4 Nxd4 e6 5 Nc3 Nc6' 'A33 English, Symmetrical') 
	#('1 c4 c5 2 Nc3' 'A34 English, Symmetrical') 
	#('1 c4 c5 2 Nc3 Nc6' 'A35 English, Symmetrical') 
	#('1 c4 c5 2 Nc3 Nc6 3 g3' 'A36 English') 
	#('1 c4 c5 2 Nc3 Nc6 3 g3 g6 4 Bg2 Bg7 5 Nf3' 'A37 English, Symmetrical') 
	#('1 c4 c5 2 Nc3 Nc6 3 g3 g6 4 Bg2 Bg7 5 Nf3 Nf6' 'A38 English, Symmetrical') 
	#('1 c4 c5 2 Nc3 Nc6 3 g3 g6 4 Bg2 Bg7 5 Nf3 Nf6 6 O-O O-O 7 d4' 'A39 English, Symmetrical, Main line with d4') 
	#('1 d4' 'A40 Queen''s Pawn Game') 
	#('1 d4 d6' 'A41 Queen''s Pawn Game (with ...d6)') 
	#('1 d4 d6 2 c4 g6 3 Nc3 Bg7 4 e4' 'A42 Modern Defense, Averbakh System') 
	#('1 d4 c5' 'A43 Old Benoni') 
	#('1 d4 c5 2 d5 e5' 'A44 Old Benoni Defense') 
	#('1 d4 Nf6' 'A45 Queen''s Pawn Game') 
	#('1 d4 Nf6 2 Nf3' 'A46 Queen''s Pawn Game') 
	#('1 d4 Nf6 2 Nf3 b6' 'A47 Queen''s Indian') 
	#('1 d4 Nf6 2 Nf3 g6' 'A48 King''s Indian') 
	#('1 d4 Nf6 2 Nf3 g6 3 g3' 'A49 King''s Indian, Fianchetto without c4') 
	#('1 d4 Nf6 2 c4' 'A50 Queen''s Pawn Game') 
	#('1 d4 Nf6 2 c4 e5' 'A51 Budapest Gambit') 
	#('1 d4 Nf6 2 c4 e5 3 dxe5 Ng4' 'A52 Budapest Gambit') 
	#('1 d4 Nf6 2 c4 d6' 'A53 Old Indian') 
	#('1 d4 Nf6 2 c4 d6 3 Nc3 e5 4 Nf3' 'A54 Old Indian, Ukrainian Variation, 4.Nf3') 
	#('1 d4 Nf6 2 c4 d6 3 Nc3 e5 4 Nf3 Nbd7 5 e4' 'A55 Old Indian, Main line') 
	#('1 d4 Nf6 2 c4 c5' 'A56 Benoni Defense') 
	#('1 d4 Nf6 2 c4 c5 3 d5 b5' 'A57 Benko Gambit') 
	#('1 d4 Nf6 2 c4 c5 3 d5 b5 4 cxb5 a6 5 bxa6' 'A58 Benko Gambit') 
	#('1 d4 Nf6 2 c4 c5 3 d5 b5 4 cxb5 a6 5 bxa6 Bxa6 6 Nc3 d6 7 e4' 'A59 Benko Gambit') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6' 'A60 Benoni Defense') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 Nf3 g6' 'A61 Benoni') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 Nf3 g6 7 g3 Bg7 8 Bg2 O-O' 'A62 Benoni, Fianchetto Variation') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 Nf3 g6 7 g3 Bg7 8 Bg2 O-O 9' 'A63 Benoni, Fianchetto, 9...Nbd7') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 Nf3 g6 7 g3 Bg7 8 Bg2 O-O 9' 'A64 Benoni, Fianchetto, 11...Re8') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4' 'A65 Benoni, 6.e4') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 f4' 'A66 Benoni') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 f4 Bg7 8 Bb5+' 'A67 Benoni, Taimanov Variation') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 f4 Bg7 8 Nf3 O-O' 'A68 Benoni, Four Pawns Attack') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 f4 Bg7 8 Nf3 O-O 9' 'A69 Benoni, Four Pawns Attack, Main line') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3' 'A70 Benoni, Classical with 7.Nf3') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Bg5' 'A71 Benoni, Classical, 8.Bg5') 	
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O' 'A72 Benoni, Classical without 9.O-O') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A73 Benoni, Classical, 9.O-O') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A74 Benoni, Classical, 9...a6, 10.a4') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A75 Benoni, Classical with ...a6 and 10...Bg4') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A76 Benoni, Classical, 9...Re8') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A77 Benoni, Classical, 9...Re8, 10.Nd2') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A78 Benoni, Classical with ...Re8 and ...Na6') 
	#('1 d4 Nf6 2 c4 c5 3 d5 e6 4 Nc3 exd5 5 cxd5 d6 6 e4 g6 7 Nf3 Bg7 8 Be2 O-O 9' 'A79 Benoni, Classical, 11.f3') 
	#('1 d4 f5' 'A80 Dutch') 
	#('1 d4 f5 2 g3' 'A81 Dutch') 
	#('1 d4 f5 2 e4' 'A82 Dutch, Staunton Gambit') 
	#('1 d4 f5 2 e4 fxe4 3 Nc3 Nf6 4 Bg5' 'A83 Dutch, Staunton Gambit') 
	#('1 d4 f5 2 c4' 'A84 Dutch') 
	#('1 d4 f5 2 c4 Nf6 3 Nc3' 'A85 Dutch, with c4 & Nc3') 
	#('1 d4 f5 2 c4 Nf6 3 g3' 'A86 Dutch') 
	#('1 d4 f5 2 c4 Nf6 3 g3 g6 4 Bg2 Bg7 5 Nf3' 'A87 Dutch, Leningrad, Main Variation') 
	#('1 d4 f5 2 c4 Nf6 3 g3 g6 4 Bg2 Bg7 5 Nf3 O-O 6 O-O d6 7 Nc3 c6' 'A88 Dutch, Leningrad, Main Variation with c6') 
	#('1 d4 f5 2 c4 Nf6 3 g3 g6 4 Bg2 Bg7 5 Nf3 O-O 6 O-O d6 7 Nc3 Nc6' 'A89 Dutch, Leningrad, Main Variation with Nc6') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2' 'A90 Dutch') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7' 'A91 Dutch Defense') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O' 'A92 Dutch') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d5 7 b3' 'A93 Dutch, Stonewall, Botvinnik Variation') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d5 7 b3 c6 8 Ba3' 'A94 Dutch, Stonewall with Ba3') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d5 7 Nc3 c6' 'A95 Dutch, Stonewall') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d6' 'A96 Dutch, Classical Variation') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d6 7 Nc3 Qe8' 'A97 Dutch, Ilyin-Genevsky') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d6 7 Nc3 Qe8 8 Qc2' 'A98 Dutch, Ilyin-Genevsky Variation with Qc2') 
	#('1 d4 f5 2 c4 Nf6 3 g3 e6 4 Bg2 Be7 5 Nf3 O-O 6 O-O d6 7 Nc3 Qe8 8 b3' 'A99 Dutch, Ilyin-Genevsky Variation with b3') 
	#('1 e4' 'B00 Uncommon King''s Pawn Opening') 
	#('1 e4 d5' 'B01 Scandinavian') 
	#('1 e4 Nf6' 'B02 Alekhine''s Defense') 
	#('1 e4 Nf6 2 e5 Nd5 3 d4' 'B03 Alekhine''s Defense') 
	#('1 e4 Nf6 2 e5 Nd5 3 d4 d6 4 Nf3' 'B04 Alekhine''s Defense, Modern') 
	#('1 e4 Nf6 2 e5 Nd5 3 d4 d6 4 Nf3 Bg4' 'B05 Alekhine''s Defense, Modern') 
	#('1 e4 g6' 'B06 Robatsch') 
	#('1 e4 d6 2 d4 Nf6' 'B07 Pirc') 
	#('1 e4 d6 2 d4 Nf6 3 Nc3 g6 4 Nf3' 'B08 Pirc, Classical') 
	#('1 e4 d6 2 d4 Nf6 3 Nc3 g6 4 f4' 'B09 Pirc, Austrian Attack') 
	#('1 e4 c6' 'B10 Caro-Kann') 
	#('1 e4 c6 2 Nc3 d5 3 Nf3 Bg4' 'B11 Caro-Kann, Two Knights, 3...Bg4') 
	#('1 e4 c6 2 d4' 'B12 Caro-Kann Defense') 
	#('1 e4 c6 2 d4 d5 3 exd5 cxd5' 'B13 Caro-Kann, Exchange') 
	#('1 e4 c6 2 d4 d5 3 exd5 cxd5 4 c4 Nf6 5 Nc3 e6' 'B14 Caro-Kann, Panov-Botvinnik Attack') 
	#('1 e4 c6 2 d4 d5 3 Nc3' 'B15 Caro-Kann') 
	#('1 e4 c6 2 d4 d5 3 Nc3 dxe4 4 Nxe4 Nf6 5 Nxf6+ gxf6' 'B16 Caro-Kann, Bronstein-Larsen Variation') 
	#('1 e4 c6 2 d4 d5 3 Nc3 dxe4 4 Nxe4 Nd7' 'B17 Caro-Kann, Steinitz Variation') 
	#('1 e4 c6 2 d4 d5 3 Nc3 dxe4 4 Nxe4 Bf5' 'B18 Caro-Kann, Classical') 
	#('1 e4 c6 2 d4 d5 3 Nc3 dxe4 4 Nxe4 Bf5 5 Ng3 Bg6 6 h4 h6 7 Nf3 Nd7' 'B19 Caro-Kann, Classical') 
	#('1 e4 c5' 'B20 Sicilian') 
	#('1 e4 c5 2 f4' 'B21 Sicilian, 2.f4 and 2.d4') 
	#('1 e4 c5 2 c3' 'B22 Sicilian, Alapin') 
	#('1 e4 c5 2 Nc3' 'B23 Sicilian, Closed') 
	#('1 e4 c5 2 Nc3 Nc6 3 g3' 'B24 Sicilian, Closed') 
	#('1 e4 c5 2 Nc3 Nc6 3 g3 g6 4 Bg2 Bg7 5 d3 d6' 'B25 Sicilian, Closed') 
	#('1 e4 c5 2 Nc3 Nc6 3 g3 g6 4 Bg2 Bg7 5 d3 d6 6 Be3' 'B26 Sicilian, Closed, 6.Be3') 
	#('1 e4 c5 2 Nf3' 'B27 Sicilian') 
	#('1 e4 c5 2 Nf3 a6' 'B28 Sicilian, O''Kelly Variation') 
	#('1 e4 c5 2 Nf3 Nf6' 'B29 Sicilian, Nimzovich-Rubinstein') 
	#('1 e4 c5 2 Nf3 Nc6' 'B30 Sicilian') 
	#('1 e4 c5 2 Nf3 Nc6 3 Bb5 g6' 'B31 Sicilian, Rossolimo Variation') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 e5' 'B32 Sicilian') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4' 'B33 Sicilian') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 g6 5 Nxc6' 'B34 Sicilian, Accelerated Fianchetto') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 g6 5 Nc3 Bg7 6 Be3 Nf6 7 Bc4' 'B35 Sicilian, Accelerated Fianchetto, Modern Variation with Bc4') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 g6 5 c4' 'B36 Sicilian, Accelerated Fianchetto') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 g6 5 c4 Bg7' 'B37 Sicilian, Accelerated Fianchetto') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 g6 5 c4 Bg7 6 Be3' 'B38 Sicilian, Accelerated Fianchetto, Maroczy Bind, 6.Be3') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 g6 5 c4 Bg7 6 Be3 Nf6 7 Nc3 Ng4' 'B39 Sicilian, Accelerated Fianchetto, Breyer Variation') 
	#('1 e4 c5 2 Nf3 e6' 'B40 Sicilian') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 a6' 'B41 Sicilian, Kan') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 a6 5 Bd3' 'B42 Sicilian, Kan') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 a6 5 Nc3' 'B43 Sicilian, Kan, 5.Nc3') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 Nc6' 'B44 Sicilian') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 Nc6 5 Nc3' 'B45 Sicilian, Taimanov') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 Nc6 5 Nc3 a6' 'B46 Sicilian, Taimanov Variation') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 Nc6 5 Nc3 Qc7' 'B47 Sicilian, Taimanov (Bastrikov) Variation') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 Nc6 5 Nc3 Qc7 6 Be3' 'B48 Sicilian, Taimanov Variation') 
	#('1 e4 c5 2 Nf3 e6 3 d4 cxd4 4 Nxd4 Nc6 5 Nc3 Qc7 6 Be3 a6 7 Be2' 'B49 Sicilian, Taimanov Variation') 
	#('1 e4 c5 2 Nf3 d6' 'B50 Sicilian') 
	#('1 e4 c5 2 Nf3 d6 3 Bb5+' 'B51 Sicilian, Canal-Sokolsky (Rossolimo) Attack') 
	#('1 e4 c5 2 Nf3 d6 3 Bb5+ Bd7' 'B52 Sicilian, Canal-Sokolsky (Rossolimo) Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Qxd4' 'B53 Sicilian') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4' 'B54 Sicilian') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 f3 e5 6 Bb5+' 'B55 Sicilian, Prins Variation, Venice Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3' 'B56 Sicilian') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bc4' 'B57 Sicilian') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 d6 6 Be2' 'B58 Sicilian') 
	#('1 e4 c5 2 Nf3 Nc6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 d6 6 Be2 e5 7 Nb3' 'B59 Sicilian, Boleslavsky Variation, 7.Nb3') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5' 'B60 Sicilian, Richter-Rauzer') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 Bd7 7 Qd2' 'B61 Sicilian, Richter-Rauzer, Larsen Variation, 7.Qd2') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6' 'B62 Sicilian, Richter-Rauzer') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2' 'B63 Sicilian, Richter-Rauzer Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2 Be7 8 O-O-O O-O 9 f4' 'B64 Sicilian, Richter-Rauzer Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2 Be7 8 O-O-O O-O 9 f4 Nxd4 10 Qxd4' 'B65 Sicilian, Richter-Rauzer Attack, 7...Be7 Defense, 9...Nxd4') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2 a6' 'B66 Sicilian, Richter-Rauzer Attack, 7...a6') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2 a6 8 O-O-O Bd7' 'B67 Sicilian, Richter-Rauzer Attack, 7...a6 Defense, 8...Bd7') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2 a6 8 O-O-O Bd7 9 f4 Be7' 'B68 Sicilian, Richter-Rauzer Attack, 7...a6 Defense, 9...Be7') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 Nc6 6 Bg5 e6 7 Qd2 a6 8 O-O-O Bd7 9 f4 Be7 10 Nf3 b5 11 Bxf6' 'B69 Sicilian, Richter-Rauzer Attack, 7...a6 Defense, 11.Bxf6') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6' 'B70 Sicilian, Dragon Variation') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 f4' 'B71 Sicilian, Dragon, Levenfish Variation') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3' 'B72 Sicilian, Dragon') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 Be2 Nc6 8 O-O' 'B73 Sicilian, Dragon, Classical') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 Be2 Nc6 8 O-O O-O 9 Nb3' 'B74 Sicilian, Dragon, Classical') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 f3' 'B75 Sicilian, Dragon, Yugoslav Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 f3 O-O' 'B76 Sicilian, Dragon, Yugoslav Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 f3 O-O 8 Qd2 Nc6 9 Bc4' 'B77 Sicilian, Dragon, Yugoslav Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 f3 O-O 8 Qd2 Nc6 9 Bc4 Bd7 10 O-O-O' 'B78 Sicilian, Dragon, Yugoslav Attack, 10.castle long') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 g6 6 Be3 Bg7 7 f3 O-O 8 Qd2 Nc6 9 Bc4 Bd7 10 O-O-O Qa5 11 Bb3 Rfc8 12 h4' 'B79 Sicilian, Dragon, Yugoslav Attack, 12.h4') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6' 'B80 Sicilian, Scheveningen') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 g4' 'B81 Sicilian, Scheveningen, Keres Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 f4' 'B82 Sicilian, Scheveningen') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Be2' 'B83 Sicilian') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Be2 a6' 'B84 Sicilian, Scheveningen') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Be2 a6 7 O-O Qc7 8 f4 Nc6' 'B85 Sicilian, Scheveningen, Classical') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Bc4' 'B86 Sicilian, Fischer-Sozin Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Bc4 a6 7 Bb3 b5' 'B87 Sicilian, Fischer-Sozin with ...a6 and ...b5') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Bc4 Nc6' 'B88 Sicilian, Fischer-Sozin Attack') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 e6 6 Bc4 Nc6 7 Be3' 'B89 Sicilian') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6' 'B90 Sicilian, Najdorf') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 g3' 'B91 Sicilian, Najdorf, Zagreb (Fianchetto) Variation') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Be2' 'B92 Sicilian, Najdorf, Opocensky Variation') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 f4' 'B93 Sicilian, Najdorf, 6.f4') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Bg5' 'B94 Sicilian, Najdorf') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Bg5 e6' 'B95 Sicilian, Najdorf, 6...e6') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Bg5 e6 7 f4' 'B96 Sicilian, Najdorf') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Bg5 e6 7 f4 Qb6' 'B97 Sicilian, Najdorf') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Bg5 e6 7 f4 Be7' 'B98 Sicilian, Najdorf') 
	#('1 e4 c5 2 Nf3 d6 3 d4 cxd4 4 Nxd4 Nf6 5 Nc3 a6 6 Bg5 e6 7 f4 Be7 8 Qf3 Qc7 9 O-O-O Nbd7' 'B99 Sicilian, Najdorf, 7...Be7 Main line') 	#('1 e4 e6' 'C00 French Defense') 
	#('1 e4 e6 2 d4 d5 3 exd5 exd5 4 Nc3 Nf6 5 Bg5' 'C01 French, Exchange') 
	#('1 e4 e6 2 d4 d5 3 e5' 'C02 French, Advance') 
	#('1 e4 e6 2 d4 d5 3 Nd2' 'C03 French, Tarrasch') 
	#('1 e4 e6 2 d4 d5 3 Nd2 Nc6 4 Ngf3 Nf6' 'C04 French, Tarrasch, Guimard Main line') 
	#('1 e4 e6 2 d4 d5 3 Nd2 Nf6' 'C05 French, Tarrasch') 
	#('1 e4 e6 2 d4 d5 3 Nd2 Nf6 4 e5 Nfd7 5 Bd3 c5 6 c3 Nc6 7 Ne2 cxd4 8 cxd4' 'C06 French, Tarrasch') 
	#('1 e4 e6 2 d4 d5 3 Nd2 c5' 'C07 French, Tarrasch') 
	#('1 e4 e6 2 d4 d5 3 Nd2 c5 4 exd5 exd5' 'C08 French, Tarrasch, Open, 4.ed ed') 
	#('1 e4 e6 2 d4 d5 3 Nd2 c5 4 exd5 exd5 5 Ngf3 Nc6' 'C09 French, Tarrasch, Open Variation, Main line') 
	#('1 e4 e6 2 d4 d5 3 Nc3' 'C10 French') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Nf6' 'C11 French') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Nf6 4 Bg5 Bb4' 'C12 French, McCutcheon') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Nf6 4 Bg5 Be7' 'C13 French') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Nf6 4 Bg5 Be7 5 e5 Nfd7 6 Bxe7 Qxe7' 'C14 French, Classical') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Bb4' 'C15 French, Winawer') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Bb4 4 e5' 'C16 French, Winawer') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Bb4 4 e5 c5' 'C17 French, Winawer, Advance') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Bb4 4 e5 c5 5 a3 Bxc3+ 6 bxc3' 'C18 French, Winawer') 
	#('1 e4 e6 2 d4 d5 3 Nc3 Bb4 4 e5 c5 5 a3 Bxc3+ 6 bxc3 Ne7' 'C19 French, Winawer, Advance') 
	#('1 e4 e5' 'C20 King''s Pawn Game') 
	#('1 e4 e5 2 d4 exd4' 'C21 Center Game') 
	#('1 e4 e5 2 d4 exd4 3 Qxd4 Nc6' 'C22 Center Game') 
	#('1 e4 e5 2 Bc4' 'C23 Bishop''s Opening') 
	#('1 e4 e5 2 Bc4 Nf6' 'C24 Bishop''s Opening') 
	#('1 e4 e5 2 Nc3' 'C25 Vienna') 
	#('1 e4 e5 2 Nc3 Nf6' 'C26 Vienna') 
	#('1 e4 e5 2 Nc3 Nf6 3 Bc4 Nxe4' 'C27 Vienna Game') 
	#('1 e4 e5 2 Nc3 Nf6 3 Bc4 Nc6' 'C28 Vienna Game') 
	#('1 e4 e5 2 Nc3 Nf6 3 f4' 'C29 Vienna Gambit') 
	#('1 e4 e5 2 f4' 'C30 King''s Gambit Declined') 
	#('1 e4 e5 2 f4 d5' 'C31 King''s Gambit Declined, Falkbeer Counter Gambit') 
	#('1 e4 e5 2 f4 d5 3 exd5 e4 4 d3 Nf6' 'C32 King''s Gambit Declined, Falkbeer Counter Gambit') 
	#('1 e4 e5 2 f4 exf4' 'C33 King''s Gambit Accepted') 
	#('1 e4 e5 2 f4 exf4 3 Nf3' 'C34 King''s Gambit Accepted') 
	#('1 e4 e5 2 f4 exf4 3 Nf3 Be7' 'C35 King''s Gambit Accepted, Cunningham') 
	#('1 e4 e5 2 f4 exf4 3 Nf3 d5' 'C36 King''s Gambit Accepted, Abbazia Defense') 
	#('1 e4 e5 2 f4 exf4 3 Nf3 g5 4 Nc3' 'C37 King''s Gambit Accepted') 
	#('1 e4 e5 2 f4 exf4 3 Nf3 g5 4 Bc4 Bg7' 'C38 King''s Gambit Accepted') 
	#('1 e4 e5 2 f4 exf4 3 Nf3 g5 4 h4' 'C39 King''s Gambit Accepted') 
	#('1 e4 e5 2 Nf3' 'C40 King''s Knight Opening') 
	#('1 e4 e5 2 Nf3 d6' 'C41 Philidor Defense') 
	#('1 e4 e5 2 Nf3 Nf6' 'C42 Petrov Defense') 
	#('1 e4 e5 2 Nf3 Nf6 3 d4 exd4 4 e5 Ne4 5 Qxd4' 'C43 Petrov, Modern Attack') 
	#('1 e4 e5 2 Nf3 Nc6' 'C44 King''s Pawn Game') 
	#('1 e4 e5 2 Nf3 Nc6 3 d4 exd4 4 Nxd4' 'C45 Scotch Game') 
	#('1 e4 e5 2 Nf3 Nc6 3 Nc3' 'C46 Three Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Nc3 Nf6' 'C47 Four Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Nc3 Nf6 4 Bb5' 'C48 Four Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Nc3 Nf6 4 Bb5 Bb4' 'C49 Four Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Bc5' 'C50 Giuoco Piano') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Bc5 4 b4' 'C51 Evans Gambit') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Bc5 4 b4 Bxb4 5 c3 Ba5' 'C52 Evans Gambit') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Bc5 4 c3' 'C53 Giuoco Piano') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Bc5 4 c3 Nf6 5 d4 exd4 6 cxd4' 'C54 Giuoco Piano') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Nf6' 'C55 Two Knights Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Nf6 4 d4 exd4 5 O-O Nxe4' 'C56 Two Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Nf6 4 Ng5' 'C57 Two Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Nf6 4 Ng5 d5 5 exd5 Na5' 'C58 Two Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bc4 Nf6 4 Ng5 d5 5 exd5 Na5 6 Bb5+ c6 7 dxc6 bxc6 8 Be2 h6' 'C59 Two Knights') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5' 'C60 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 Nd4' 'C61 Ruy Lopez, Bird''s Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 d6' 'C62 Ruy Lopez, Old Steinitz Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 f5' 'C63 Ruy Lopez, Schliemann Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 Bc5' 'C64 Ruy Lopez, Classical') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 Nf6' 'C65 Ruy Lopez, Berlin Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 Nf6 4 O-O d6' 'C66 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 Nf6 4 O-O Nxe4' 'C67 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Bxc6' 'C68 Ruy Lopez, Exchange') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Bxc6 dc 5 O-O f6' 'C69 Ruy Lopez, Exchange, Gligoric Variation') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4' 'C70 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 d6' 'C71 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 d6 5 O-O' 'C72 Ruy Lopez, Modern Steinitz Defense, 5.O-O') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 d6 5 Bxc6+ bxc6 6 d4' 'C73 Ruy Lopez, Modern Steinitz Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 d6 5 c3' 'C74 Ruy Lopez, Modern Steinitz Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 d6 5 c3 Bd7' 'C75 Ruy Lopez, Modern Steinitz Defense') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 d6 5 c3 Bd7 6 d4 g6' 'C76 Ruy Lopez, Modern Steinitz Defense, Fianchetto Variation') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6' 'C77 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O' 'C78 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O d6' 'C79 Ruy Lopez, Steinitz Defense Deferred') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Nxe4' 'C80 Ruy Lopez, Open') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Nxe4 6 d4 b5 7 Bb3 d5 8 dxe5 Be6 9 Qe2' 'C81 Ruy Lopez, Open, Howell Attack') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Nxe4 6 d4 b5 7 Bb3 d5 8 dxe5 Be6 9 c3' 'C82 Ruy Lopez, Open') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Nxe4 6 d4 b5 7 Bb3 d5 8 dxe5 Be6' 'C83 Ruy Lopez, Open') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7' 'C84 Ruy Lopez, Closed') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Bxc6 dxc6' 'C85 Ruy Lopez, Exchange Variation Doubly Deferred (DERLD)') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Qe2' 'C86 Ruy Lopez, Worrall Attack') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 d6' 'C87 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3' 'C88 Ruy Lopez') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d5' 'C89 Ruy Lopez, Marshall') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6' 'C90 Ruy Lopez, Closed') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 d4' 'C91 Ruy Lopez, Closed') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3' 'C92 Ruy Lopez, Closed') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 h6' 'C93 Ruy Lopez, Closed, Smyslov Defense') 	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 Nb8' 'C94 Ruy Lopez, Closed, Breyer Defense') 	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 Nb8 10 d4' 'C95 Ruy Lopez, Closed, Breyer') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 Na5 10 Bc2' 'C96 Ruy Lopez, Closed') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 Na5 10 Bc2 c5 11 d4 Qc7' 'C97 Ruy Lopez, Closed, Chigorin') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 Na5 10 Bc2 c5 11 d4 Qc7 12 Nbd2 Nc6' 'C98 Ruy Lopez, Closed, Chigorin') 
	#('1 e4 e5 2 Nf3 Nc6 3 Bb5 a6 4 Ba4 Nf6 5 O-O Be7 6 Re1 b5 7 Bb3 O-O 8 c3 d6 9 h3 Na5 10 Bc2 c5 11 d4 Qc7 12 Nbd2 cxd4 13 cxd4' 'C99 Ruy Lopez, Closed, Chigorin, 12...cd') 
	#('1 d4 d5' 'D00 Queen''s Pawn Game') 
	#('1 d4 d5 2 Nc3 Nf6 3 Bg5' 'D01 Richter-Veresov Attack') 
	#('1 d4 d5 2 Nf3' 'D02 Queen''s Pawn Game') 
	#('1 d4 d5 2 Nf3 Nf6 3 Bg5' 'D03 Torre Attack (Tartakower Variation)') 
	#('1 d4 d5 2 Nf3 Nf6 3 e3' 'D04 Queen''s Pawn Game') 
	#('1 d4 d5 2 Nf3 Nf6 3 e3 e6' 'D05 Queen''s Pawn Game') 
	#('1 d4 d5 2 c4' 'D06 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 Nc6' 'D07 Queen''s Gambit Declined, Chigorin Defense') 
	#('1 d4 d5 2 c4 e5' 'D08 Queen''s Gambit Declined, Albin Counter Gambit') 
	#('1 d4 d5 2 c4 e5 3 dxe5 d4 4 Nf3 Nc6 5 g3' 'D09 Queen''s Gambit Declined, Albin Counter Gambit, 5.g3') 
	#('1 d4 d5 2 c4 c6' 'D10 Queen''s Gambit Declined Slav') 
	#('1 d4 d5 2 c4 c6 3 Nf3' 'D11 Queen''s Gambit Declined Slav') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 e3 Bf5' 'D12 Queen''s Gambit Declined Slav') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 cxd5 cxd5' 'D13 Queen''s Gambit Declined Slav, Exchange Variation') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 cxd5 cxd5 5 Nc3 Nc6 6 Bf4 Bf5' 'D14 Queen''s Gambit Declined Slav, Exchange Variation') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 Nc3' 'D15 Queen''s Gambit Declined Slav') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 Nc3 dxc4 5 a4' 'D16 Queen''s Gambit Declined Slav') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 Nc3 dxc4 5 a4 Bf5' 'D17 Queen''s Gambit Declined Slav')
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 Nc3 dxc4 5 a4 Bf5 6 e3' 'D18 Queen''s Gambit Declined Slav, Dutch') 
	#('1 d4 d5 2 c4 c6 3 Nf3 Nf6 4 Nc3 dxc4 5 a4 Bf5 6 e3 e6 7 Bxc4 Bb4 8 O-O O-O 9 Qe2' 'D19 Queen''s Gambit Declined Slav, Dutch') 	#('1 d4 d5 2 c4 dxc4' 'D20 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3' 'D21 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 a6 4 e3 Bg4 5 Bxc4 e6 6 d5' 'D22 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6' 'D23 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6 4 Nc3' 'D24 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6 4 e3' 'D25 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6 4 e3 e6' 'D26 Queen''s Gambit Accepted') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6 4 e3 e6 5 Bxc4 c5 6 O-O a6' 'D27 Queen''s Gambit Accepted, Classical') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6 4 e3 e6 5 Bxc4 c5 6 O-O a6 7 Qe2' 'D28 Queen''s Gambit Accepted, Classical') 
	#('1 d4 d5 2 c4 dxc4 3 Nf3 Nf6 4 e3 e6 5 Bxc4 c5 6 O-O a6 7 Qe2 b5 8 Bb3 Bb7' 'D29 Queen''s Gambit Accepted, Classical') 
	#('1 d4 d5 2 c4 e6' 'D30 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3' 'D31 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 c5' 'D32 Queen''s Gambit Declined, Tarrasch') 
	#('1 d4 d5 2 c4 e6 3 Nc3 c5 4 cxd5 exd5 5 Nf3 Nc6 6 g3' 'D33 Queen''s Gambit Declined, Tarrasch') 
	#('1 d4 d5 2 c4 e6 3 Nc3 c5 4 cxd5 exd5 5 Nf3 Nc6 6 g3 Nf6 7 Bg2 Be7' 'D34 Queen''s Gambit Declined, Tarrasch') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6' 'D35 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 cxd5 exd5 5 Bg5 c6 6 Qc2' 'D36 Queen''s Gambit Declined, Exchange, Positional line, 6.Qc2') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3' 'D37 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 Bb4' 'D38 Queen''s Gambit Declined, Ragozin Variation') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 Bb4 5 Bg5 dxc4' 'D39 Queen''s Gambit Declined, Ragozin, Vienna Variation') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c5' 'D40 Queen''s Gambit Declined, Semi-Tarrasch') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c5 5 cxd5' 'D41 Queen''s Gambit Declined, Semi-Tarrasch') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c5 5 cxd5 Nxd5 6 e3 Nc6 7 Bd3' 'D42 Queen''s Gambit Declined, Semi-Tarrasch, 7.Bd3') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6' 'D43 Queen''s Gambit Declined Semi-Slav') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6 5 Bg5 dxc4' 'D44 Queen''s Gambit Declined Semi-Slav') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6 5 e3' 'D45 Queen''s Gambit Declined Semi-Slav') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6 5 e3 Nbd7 6 Bd3' 'D46 Queen''s Gambit Declined Semi-Slav') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6 5 e3 Nbd7 6 Bd3 dxc4 7 Bxc4' 'D47 Queen''s Gambit Declined Semi-Slav') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6 5 e3 Nbd7 6 Bd3 dxc4 7 Bxc4 b5 8 Bd3 a6' 'D48 Queen''s Gambit Declined Semi-Slav, Meran') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Nf3 c6 5 e3 Nbd7 6 Bd3 dxc4 7 Bxc4 b5 8 Bd3 a6 9 e4 c5 10 e5 cxd4 11 Nxb5' 'D49 Queen''s Gambit Declined Semi-Slav, Meran') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5' 'D50 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Nbd7' 'D51 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Nbd7 5 e3 c6 6 Nf3' 'D52 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7' 'D53 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Rc1' 'D54 Queen''s Gambit Declined, Anti-Neo-Orthodox Variation') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3' 'D55 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 h6 7 Bh4' 'D56 Queen''s Gambit Declined') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 h6 7 Bh4 Ne4 8 Bxe7 Qxe7' 'D57 Queen''s Gambit Declined, Lasker Defense') 	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 h6 7 Bh4 b6' 'D58 Queen''s Gambit Declined, Tartakower (Makagonov-Bondarevsky) System') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 h6 7 Bh4 b6 8 cxd5 Nxd5' 'D59 Queen''s Gambit Declined, Tartakower') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7' 'D60 Queen''s Gambit Declined, Orthodox Defense') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Qc2' 'D61 Queen''s Gambit Declined, Orthodox, Rubinstein Attack') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Qc2 c5 8 cxd5' 'D62 Queen''s Gambit Declined, Orthodox, Rubinstein Attack') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1' 'D63 Queen''s Gambit Declined, Orthodox Defense') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1 c6 8 Qc2' 'D64 Queen''s Gambit Declined, Orthodox, Rubinstein Attack') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1 c6 8 Qc2 a6 9 cxd5' 'D65 Queen''s Gambit Declined, Orthodox, Rubinstein Attack, Main line') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1 c6 8 Bd3' 'D66 Queen''s Gambit Declined, Orthodox Defense, Bd3 line') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1 c6 8 Bd3 dxc4 9 Bxc4 Nd5' 'D67 Queen''s Gambit Declined, Orthodox Defense, Bd3 line') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1 c6 8 Bd3 dxc4' 'D68 Queen''s Gambit Declined, Orthodox Defense, Classical') 
	#('1 d4 d5 2 c4 e6 3 Nc3 Nf6 4 Bg5 Be7 5 e3 O-O 6 Nf3 Nbd7 7 Rc1 c6 8 Bd3 dxc4' 'D69 Queen''s Gambit Declined, Orthodox Defense, Classical, 13.de') 
	#('1 d4 Nf6 2 c4 g6 3 f3 d5' 'D70 Neo-Grunfeld Defense') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5' 'D71 Neo-Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 cxd5 Nxd5 6 e4 Nb6 7 Ne2' 'D72 Neo-Grunfeld, 5.cd, Main line') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3' 'D73 Neo-Grunfeld, 5.Nf3') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3 O-O 6 cxd5 Nxd5 7 O-O' 'D74 Neo-Grunfeld, 6.cd Nxd5, 7.O-O') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3 O-O 6 cxd5 Nxd5 7 O-O c5 8 dxc5' 'D75 Neo-Grunfeld, 6.cd Nxd5, 7.O-O c5, 8.dxc5') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3 O-O 6 cxd5 Nxd5 7 O-O Nb6' 'D76 Neo-Grunfeld, 6.cd Nxd5, 7.O-O Nb6') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3 O-O 6 O-O' 'D77 Neo-Grunfeld, 6.O-O') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3 O-O 6 O-O c6' 'D78 Neo-Grunfeld, 6.O-O c6') 
	#('1 d4 Nf6 2 c4 g6 3 g3 d5 4 Bg2 Bg7 5 Nf3 O-O 6 O-O c6 7 cxd5 cxd5' 'D79 Neo-Grunfeld, 6.O-O, Main line') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5' 'D80 Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Qb3' 'D81 Grunfeld, Russian Variation') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Bf4' 'D82 Grunfeld, 4.Bf4') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Bf4 Bg7 5 e3 O-O' 'D83 Grunfeld, Grunfeld Gambit') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Bf4 Bg7 5 e3 O-O 6 cxd5 Nxd5 7 Nxd5 Qxd5 8 Bxc7' 'D84 Grunfeld, Grunfeld Gambit Accepted') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 cxd5 Nxd5' 'D85 Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 cxd5 Nxd5 5 e4 Nxc3 6 bxc3 Bg7 7 Bc4' 'D86 Grunfeld, Exchange') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 cxd5 Nxd5 5 e4 Nxc3 6 bxc3 Bg7 7 Bc4 O-O 8 Ne2 c5' 'D87 Grunfeld, Exchange') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 cxd5 Nxd5 5 e4 Nxc3 6 bxc3 Bg7 7 Bc4 O-O 8 Ne2' 'D88 Grunfeld, Spassky Variation, Main line, 10...cd, 11.cd') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 cxd5 Nxd5 5 e4 Nxc3 6 bxc3 Bg7 7 Bc4 O-O 8 Ne2' 'D89 Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3' 'D90 Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Bg5' 'D91 Grunfeld, 5.Bg5') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Bf4' 'D92 Grunfeld, 5.Bf4') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Bf4 O-O 6 e3' 'D93 Grunfeld, with Bf4 & e3') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 e3' 'D94 Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 e3 O-O 6 Qb3' 'D95 Grunfeld') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Qb3' 'D96 Grunfeld, Russian Variation') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Qb3 dxc4 6 Qxc4 O-O 7 e4' 'D97 Grunfeld, Russian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Qb3 dxc4 6 Qxc4 O-O 7 e4 Bg4' 'D98 Grunfeld, Russian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 d5 4 Nf3 Bg7 5 Qb3 dxc4 6 Qxc4 O-O 7 e4 Bg4 8 Be3' 'D99 Grunfeld Defense, Smyslov') 
	#('1 d4 Nf6 2 c4 e6' 'E00 Queen''s Pawn Game') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2' 'E01 Catalan, Closed') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 dxc4 5 Qa4+' 'E02 Catalan, Open, 5.Qa4') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 dxc4 5 Qa4+ Nbd7 6 Qxc4' 'E03 Catalan, Open') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 dxc4 5 Nf3' 'E04 Catalan, Open, 5.Nf3') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 dxc4 5 Nf3 Be7' 'E05 Catalan, Open, Classical line') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 Be7 5 Nf3' 'E06 Catalan, Closed, 5.Nf3') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 Be7 5 Nf3 O-O 6 O-O Nbd7' 'E07 Catalan, Closed') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 Be7 5 Nf3 O-O 6 O-O Nbd7 7 Qc2' 'E08 Catalan, Closed') 
	#('1 d4 Nf6 2 c4 e6 3 g3 d5 4 Bg2 Be7 5 Nf3 O-O 6 O-O Nbd7 7 Qc2 c6 8 Nbd2' 'E09 Catalan, Closed') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3' 'E10 Queen''s Pawn Game') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 Bb4+' 'E11 Bogo-Indian Defense') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6' 'E12 Queen''s Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 Nc3 Bb7 5 Bg5 h6 6 Bh4 Bb4' 'E13 Queen''s Indian, 4.Nc3, Main line') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 e3' 'E14 Queen''s Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 g3' 'E15 Queen''s Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 g3 Bb7 5 Bg2 Bb4+' 'E16 Queen''s Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 g3 Bb7 5 Bg2 Be7' 'E17 Queen''s Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 g3 Bb7 5 Bg2 Be7 6 O-O O-O 7 Nc3' 'E18 Queen''s Indian, Old Main line, 7.Nc3') 
	#('1 d4 Nf6 2 c4 e6 3 Nf3 b6 4 g3 Bb7 5 Bg2 Be7 6 O-O O-O 7 Nc3 Ne4 8 Qc2 Nxc3' 'E19 Queen''s Indian, Old Main line, 9.Qxc3') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4' 'E20 Nimzo-Indian') #('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Nf3' 'E21 Nimzo-Indian, Three Knights') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qb3' 'E22 Nimzo-Indian, Spielmann Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qb3 c5 5 dxc5 Nc6' 'E23 Nimzo-Indian, Spielmann') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 a3 Bxc3+ 5 bxc3' 'E24 Nimzo-Indian, Samisch') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 a3 Bxc3+ 5 bxc3 c5 6 f3 d5 7 cxd5' 'E25 Nimzo-Indian, Samisch') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 a3 Bxc3+ 5 bxc3 c5 6 e3' 'E26 Nimzo-Indian, Samisch') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 a3 Bxc3+ 5 bxc3 O-O' 'E27 Nimzo-Indian, Samisch Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 a3 Bxc3+ 5 bxc3 O-O 6 e3' 'E28 Nimzo-Indian, Samisch Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 a3 Bxc3+ 5 bxc3 O-O 6 e3 c5 7 Bd3 Nc6' 'E29 Nimzo-Indian, Samisch') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Bg5' 'E30 Nimzo-Indian, Leningrad') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Bg5 h6 5 Bh4 c5 6 d5 d6' 'E31 Nimzo-Indian, Leningrad, Main line') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2' 'E32 Nimzo-Indian, Classical') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 Nc6' 'E33 Nimzo-Indian, Classical') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 d5' 'E34 Nimzo-Indian, Classical, Noa Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 d5 5 cxd5 exd5' 'E35 Nimzo-Indian, Classical, Noa Variation, 5.cd ed') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 d5 5 a3' 'E36 Nimzo-Indian, Classical') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 d5 5 a3 Bxc3+ 6 Qxc3 Ne4 7 Qc2' 'E37 Nimzo-Indian, Classical') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 c5' 'E38 Nimzo-Indian, Classical, 4...c5') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 Qc2 c5 5 dxc5 O-O' 'E39 Nimzo-Indian, Classical, Pirc Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3' 'E40 Nimzo-Indian, 4.e3') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 c5' 'E41 Nimzo-Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 c5 5 Ne2' 'E42 Nimzo-Indian, 4.e3 c5, 5.Ne2 (Rubinstein)') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 b6' 'E43 Nimzo-Indian, Fischer Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 b6 5 Ne2' 'E44 Nimzo-Indian, Fischer Variation, 5.Ne2') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 b6 5 Ne2 Ba6' 'E45 Nimzo-Indian, 4.e3, Bronstein (Byrne) Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O' 'E46 Nimzo-Indian') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Bd3' 'E47 Nimzo-Indian, 4.e3 O-O 5.Bd3') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Bd3 d5' 'E48 Nimzo-Indian, 4.e3 O-O 5.Bd3 d5') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Bd3 d5 6 a3 Bxc3+ 7 bxc3' 'E49 Nimzo-Indian, 4.e3, Botvinnik System') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3' 'E50 Nimzo-Indian, 4.e3 O-O 5.Nf3, without ...d5')
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5' 'E51 Nimzo-Indian, 4.e3') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 b6' 'E52 Nimzo-Indian, 4.e3, Main line with ...b6') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5' 'E53 Nimzo-Indian, 4.e3') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5 7 O-O dxc4 8 Bxc4' 'E54 Nimzo-Indian, 4.e3, Gligoric System') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5 7 O-O dxc4 8 Bxc4 Nbd7' 'E55 Nimzo-Indian, 4.e3, Gligoric System, Bronstein Variation') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5 7 O-O Nc6' 'E56 Nimzo-Indian, 4.e3, Main line with 7...Nc6') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5 7 O-O Nc6 8 a3 dxc4 9 Bxc4' 'E57 Nimzo-Indian, 4.e3, Main line with 8...dc and 9...cd') 
	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5 7 O-O Nc6 8 a3 Bxc3 9 bxc3' 'E58 Nimzo-Indian, 4.e3, Main line with 8...Bxc3') 	#('1 d4 Nf6 2 c4 e6 3 Nc3 Bb4 4 e3 O-O 5 Nf3 d5 6 Bd3 c5 7 O-O Nc6 8 a3 Bxc3 9 bxc3 dxc4 10 Bxc4' 'E59 Nimzo-Indian, 4.e3, Main line') 
	#('1 d4 Nf6 2 c4 g6' 'E60 King''s Indian Defense') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3' 'E61 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3' 'E62 King''s Indian, Fianchetto') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 Nc6 7 O-O a6' 'E63 King''s Indian, Fianchetto, Panno Variation') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 c5' 'E64 King''s Indian, Fianchetto, Yugoslav System') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 c5 7 O-O' 'E65 King''s Indian, Fianchetto, Yugoslav, 7.O-O') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 c5 7 O-O Nc6 8 d5' 'E66 King''s Indian, Fianchetto, Yugoslav Panno') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 Nbd7' 'E67 King''s Indian, Fianchetto') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 Nbd7 7 O-O e5 8 e4' 'E68 King''s Indian, Fianchetto, Classical Variation, 8.e4') 	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 Nf3 d6 5 g3 O-O 6 Bg2 Nbd7 7 O-O e5 8 e4 c6 9 h3' 'E69 King''s Indian, Fianchetto, Classical Main line') 	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4' 'E70 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 h3' 'E71 King''s Indian, Makagonov System (5.h3)') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 g3' 'E72 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Be2' 'E73 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Be2 O-O 6 Bg5 c5' 'E74 King''s Indian, Averbakh, 6...c5') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Be2 O-O 6 Bg5 c5 7 d5 e6' 'E75 King''s Indian, Averbakh, Main line') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f4' 'E76 King''s Indian, Four Pawns Attack') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f4 O-O 6 Be2' 'E77 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f4 O-O 6 Be2 c5 7 Nf3' 'E78 King''s Indian, Four Pawns Attack, with Be2 and Nf3') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f4 O-O 6 Be2 c5 7 Nf3 cxd4 8 Nxd4 Nc6 9 Be3' 'E79 King''s Indian, Four Pawns Attack, Main line') 	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3' 'E80 King''s Indian, Samisch Variation') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O' 'E81 King''s Indian, Samisch') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 b6' 'E82 King''s Indian, Samisch, double Fianchetto Variation') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 Nc6' 'E83 King''s Indian, Samisch') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 Nc6 7 Nge2 a6 8 Qd2 Rb8' 'E84 King''s Indian, Samisch, Panno Main line') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 e5' 'E85 King''s Indian, Samisch, Orthodox Variation') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 e5 7 Nge2 c6' 'E86 King''s Indian, Samisch, Orthodox, 7.Nge2 c6') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 e5 7 d5' 'E87 King''s Indian, Samisch, Orthodox') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 e5 7 d5 c6' 'E88 King''s Indian, Samisch, Orthodox, 7.d5 c6') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 f3 O-O 6 Be3 e5 7 d5 c6 8 Nge2 cxd5' 'E89 King''s Indian, Samisch, Orthodox Main line') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3' 'E90 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2' 'E91 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5' 'E92 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 d5 Nbd7' 'E93 King''s Indian, Petrosian System') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 O-O' 'E94 King''s Indian, Orthodox') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 O-O Nbd7 8 Re1' 'E95 King''s Indian, Orthodox, 7...Nbd7, 8.Re1') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 O-O Nbd7 8 Re1 c6 9 Bf1 a5' 'E96 King''s Indian, Orthodox, 7...Nbd7, Main line') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 O-O Nc6' 'E97 King''s Indian') 
	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 O-O Nc6 8 d5 Ne7 9 Ne1' 'E98 King''s Indian, Orthodox, Taimanov, 9.Ne1') 	#('1 d4 Nf6 2 c4 g6 3 Nc3 Bg7 4 e4 d6 5 Nf3 O-O 6 Be2 e5 7 O-O Nc6 8 d5 Ne7 9 Ne1 Nd7 10 f3 f5' 'E99 King''s Indian, Orthodox, Taimanov')
	)! !

!OpeningModel methodsFor: 'accessing' stamp: 'dhn 9/14/2018 18:24:29'!
listCollection
	"Answer the value of listCollection"

	^ listCollection! !

!OpeningModel methodsFor: 'accessing' stamp: 'dhn 9/18/2018 12:22:33'!
listCollection: anObject
	"Set the value of listCollection"

	listCollection _ anObject! !

!OpeningModel methodsFor: 'accessing' stamp: 'dhn 9/12/2018 17:30:46'!
selectedOpening
	"Answer the value of selectedOpening"

	^ selectedOpening! !

!OpeningModel methodsFor: 'operating' stamp: 'dhn 9/14/2018 14:54:30'!
openings
	"Answer the names of chess openings"

	^ listCollection! !

!OpeningModel methodsFor: 'operating' stamp: 'dhn 9/16/2018 21:15:49'!
openingsFor: aString
	"Search for openings which begin with aString"
	
	listCollection _ OrderedCollection new.
	self simple do: [:ea | | ky |
		ea first size >= aString size
			ifTrue: [
				ky _ ea first copyFrom: 1 to: aString size.
				ky = aString
					ifTrue: [listCollection add: ea second]]].
	self openingsIndex: 0.
	self triggerEvent: #search! !

!OpeningModel methodsFor: 'operating' stamp: 'dhn 9/12/2018 15:56:01'!
openingsIndex
	"Answer the value of the index"

	^ openingsIndex ifNil: [openingsIndex _ 0]. 	"nil is unacceptable during model initialization"
! !

!OpeningModel methodsFor: 'operating' stamp: 'dhn 9/15/2018 14:18:01'!
openingsIndex: anObject
	"Set the value of openingsIndex"

	openingsIndex _ anObject.
	anObject > 0
		ifTrue: [self selectedOpening: anObject].
	self triggerEvent: #openingChange! !

!OpeningModel methodsFor: 'operating' stamp: 'dhn 9/16/2018 21:12:33'!
reset
	"Rest the receiver to its original state"
	
	listCollection _ OrderedCollection new.
	self simple do: [:ea | listCollection add: ea second].
	self openingsIndex: 0.
	self triggerEvent: #search! !

!OpeningModel methodsFor: 'operating' stamp: 'dhn 9/12/2018 16:07:28'!
selectedOpening: anObject
	"Set the value of selectedOpening"

	selectedOpening _ anObject.
	self changed: #openingIndex 	"enables deselection of the list by using the mouse"! !

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

!OpeningView methodsFor: 'initialization' stamp: 'dhn 9/15/2018 15:00:27'!
buildMorphicWindow
	"Specify the layout of the view"
	| upper lower |
	
	self layoutMorph beColumn 
		name: #main. 	"give the layoutMorph a name which will appear in the halos"

	upper _ LayoutMorph newRow name: #upper.
	
	upper addMorph: 
		((PluggableButtonMorph model: self action: #search)
			label: 'Search';
			layoutSpec: (LayoutSpec fixedWidth: 80)).
	upper addMorph: 
		((PluggableButtonMorph model: self action: #reset)
			label: 'Reset';
			layoutSpec: (LayoutSpec fixedWidth: 80)).
	upper addMorph: ((searchString _ TextModelMorph 
		withModel: (TextModel withText: ''))
			layoutSpec: LayoutSpec useAll;
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: #search).
			
	lower _ LayoutMorph newRow name: #lower.
	
	self layoutMorph
		addMorph: upper layoutSpec: (LayoutSpec fixedHeight: 30);
		addMorph: lower layoutSpec: LayoutSpec useAll.
			
	listPane _ (PluggableListMorph
				model: model 	"the object specified in self class open"
				listGetter: #openings 	"the method in 'model' which answers the list content"
				indexGetter: #openingsIndex 	"the method in 'model' which answers the selection made in the list"
				indexSetter: #openingsIndex:	"the method in 'model' which sets the list index"
				mainView: self
				menuGetter: #listMenu
				keystrokeAction: nil)
					name: #openings. 	"give the PluggableListMorph a name which will appear in the halos"

	textPane _ (TextModelMorph 
		withModel: (TextModel withText: '')) 	"note the different model specification"
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: #moves. 	"give the TextModelMorph a name which will appear in the halos"

	lower
		addMorph: listPane layoutSpec: (LayoutSpec proportionalWidth: 0.6);
		addAdjusterAndMorph: textPane layoutSpec: (LayoutSpec proportionalWidth: 0.4)
! !

!OpeningView methodsFor: 'fileout' stamp: 'dhn 9/15/2018 18:22:29'!
writePgn
	"Write a *.pgn file"
	| arg outFile lines |
	
	arg _ (FillInTheBlankMorph 
		request: 'Base name for *.pgn file?'
		initialAnswer: ''
		centerAt: Display center
		onCancelReturn: ''
		acceptOnCR: true).
	arg 
		ifNotEmpty: [
			outFile _ 'chess/', arg, '.pgn'.
			lines _ String new writeStream
					nextPutAll: '[Event "';
					nextPutAll: (model listCollection at: model openingsIndex);
					nextPutAll: '"]'; newLine; newLine;
					nextPutAll: textPane model actualContents; newLine.
			outFile asFileEntry forceWriteStreamDo: [ :out | out nextPutAll: lines contents]]
! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/13/2018 20:28:34'!
changeList
	"React to a changed list"

	listPane updateList! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/18/2018 18:06:24'!
findWord
	"Find occurrences of a string in the list of names"
	| arg col |
	
	arg _ (FillInTheBlankMorph 
	request: 'Search string?'
	initialAnswer: ''
	centerAt: Display center
	onCancelReturn: ''
	acceptOnCR: true).
	arg 
		ifNotEmpty: [ | str ix y |
			col _ OrderedCollection new.
			str _ model listCollection.
			1 to: str size do: [:n |
				y _ str at: n.
				ix _ y findString: arg startingAt: 1 caseSensitive: false.
				ix > 0
					ifTrue: [col add: (str at: n)]].
			model 
				openingsIndex: 0;
				listCollection: col.
			self changeList.
			listPane activateWindow]! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/16/2018 20:44:34'!
formSearch
	"Copy the textPane contents into the search field and do the search"
	
	searchString model actualContents: textPane model actualContents asString.
	self search! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/18/2018 16:06:15'!
listMenu
	"Show the popup menu"	
	| aMenu |
	
	aMenu _ MenuMorph new defaultTarget: self.
	model openingsIndex > 0
		ifTrue: [
			aMenu
				add: 'Search on these moves'		action: #formSearch;
				add: 'List search string...'			action: #findWord;
				add: 'Write a *.pgn file'				action: #writePgn]
		ifFalse: [
			aMenu
				add: 'List search string...'			action: #findWord].
	^ aMenu! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/15/2018 12:58:12'!
newText
	"Set the contents of the text pane"
	"note that the textPane model differs from the model for this view"
	| nam |

	textPane model actualContents: (
		model openingsIndex > 0
			ifTrue: [
				nam _ listPane model listCollection at: model selectedOpening.
				(model simple detect: [:a | a second = nam]) first]
			ifFalse: [''])! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/14/2018 20:49:00'!
reset
	"Restore the view to the initial state"

	searchString model actualContents: ''.
	textPane model actualContents: ''.
	model reset! !

!OpeningView methodsFor: 'updating' stamp: 'dhn 9/12/2018 20:04:35'!
search

	model openingsFor: searchString text asString! !

!OpeningView class methodsFor: 'instance creation' stamp: 'dhn 9/16/2018 21:10:02'!
open
"	Answer an instance of this class.
	To start from a Browser or a WorkSpace, do (cmd-d) the following:

	OpeningView open.
"
	| mod win |

	win _ (self
		open: (mod _ OpeningModel new) "an instance of the model"
		label: 'Chess Openings') 	"the initial title; can be changed later with #setLabel: "
			setWindowColor:  Theme current browser. 	"the initial color of the window title bar and frame; other choices below"	
	"#open:label: sends #buildMorphicWindow to the instance of this class, to allow customization of the view"

	mod when: #openingChange send: #newText to: win.
	mod when: #search send: #changeList to: win.
	
	win morphExtent: 600@600.
	^ win
	
	"the following answer specific colors which match Cuis themes: 
									Theme current browser 
									Theme current changeList 
									Theme current changeSorter 
									Theme current fileContentsBrowser 
									Theme current packageList 
									Theme current debugger 
									Theme current fileList 
									Theme current messageNames 
									Theme current messageSet 
									Theme current object 
									Theme current testRunner 
									Theme current textEditor 
									Theme current transcript 
									Theme current versionsBrowser 
									Theme current workspace 
	or, use a Color class method"
! !

!ConvertECO methodsFor: 'file I/O' stamp: 'dhn 9/16/2018 14:03:45'!
convert: aName
	"Convert a file named aName to simple database form"
	| col input ios x y opening moves |

	col _ OrderedCollection new.
	input _ aName asFileEntry fileContents.
	ios _ ReadStream on: input.
	[(x _ ios nextLine) notNil]
		whileTrue: [
			y _ x indexOf: Character tab ifAbsent: [0].
			opening _ String streamContents: [:str |
				str
					nextPutAll: (x copyFrom: 1 to: y - 1);
					nextPut: $ ;
					nextPutAll: (x copyFrom: y + 1 to: x size)].
			(moves _ ios nextLine)
				ifNotNil: [col add: {moves. opening}]].
	^ col! !

!ConvertECO class methodsFor: 'fileIn/Out' stamp: 'dhn 9/16/2018 12:14:45'!
from: aName
	"Convert a file named aName to simple database form"
	| obj |
	
	obj _ self basicNew.
	^ obj convert: aName! !

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

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
id
	"Answer the value of id"

	^ id! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
id: anObject
	"Set the value of id"

	id _ anObject! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
piece
	"Answer the value of piece"

	^ piece! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
piece: anObject
	"Set the value of piece"

	piece _ anObject! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 17:00:26'!
side
	"Answer the value of side"

	^ side! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 17:00:26'!
side: anObject
	"Set the value of side"

	side _ anObject! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 18:09:02'!
take
	"Answer the value of take"

	^ take! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 18:09:02'!
take: anObject
	"Set the value of take"

	take _ anObject! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
target
	"Answer the value of target"

	^ target! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
target: anObject
	"Set the value of target"

	target _ anObject! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
type
	"Answer the value of type"

	^ type! !

!Move methodsFor: 'accessing' stamp: 'dhn 8/9/2018 16:34:24'!
type: anObject
	"Set the value of type"

	type _ anObject! !

!Move class methodsFor: 'instance creation' stamp: 'dhn 8/9/2018 22:30:56'!
new: aString wOrB: aChar
	"Answer an instance created by parsing aString"
	| mov ios ch row col |
	
	mov _ self basicNew.
	mov side: aChar.
	aString = 'O-O' ifTrue: [mov piece: #Short. ^ mov].
	aString = 'O-O-O' ifTrue: [mov piece: #Long. ^ mov].
	ios _ ReadStream on: aString reversed.
	ios position: 0.
	ch _ ios next.
	(#($+ $#) includes: ch)
		ifTrue: [mov type: ch. ch _ ios next].
	row _ ch.
	col _ ios next.
	mov target: col asString, row asString.
	ios atEnd ifTrue: [
		mov
			piece: #Pawn;
			id: col.
		^mov].
	ch _ ios next.
	ch = $x 
		ifTrue: [
			mov take: ch. 
			ch _ ios next].
	(self pieceIds includes: ch)
		ifTrue: [mov piece: (self symbols at: ch)]
		ifFalse: [
			mov
				id: ch;
				piece: (self symbols at: ios next)].
	^ mov! !

!Move class methodsFor: 'instance creation' stamp: 'dhn 8/9/2018 21:41:17'!
pieceIds
	"Answer the abbreviations for the major pieces"
	
	^ #($K $Q $B $N $R)! !

!Move class methodsFor: 'instance creation' stamp: 'dhn 8/9/2018 18:54:16'!
symbols
	"Answer the symbol for the piece in a move"
	
	^ Dictionary new
		at: $K put: #King;
		at: $Q put: #Queen;
		at: $B put: #Bishop;
		at: $N put: #Knight;
		at: $R put: #Rook;
		yourself		! !

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

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 20:03:32'!
board
	"Answer the value of board"

	^ board! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 20:04:06'!
board: anObject
	"Set the value of board"

	board _ anObject! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 17:43:56'!
color
	"Answer the value of color"

	^ color! !

!Piece methodsFor: 'accessing' stamp: 'dhn 7/20/2018 17:43:56'!
color: anObject
	"Set the value of color"

	color _ anObject! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 20:11:26'!
move
	"Answer the possible move positions, relative to current position, without capturing opponent's piece"
	
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

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 21:49:49'!
range
	"Answer the value of range"

	^ range! !

!Piece methodsFor: 'accessing' stamp: 'dhn 8/2/2018 21:50:07'!
range: anObject
	"Set the value of range"

	range _ anObject! !

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

!Piece methodsFor: 'operating' stamp: 'dhn 8/3/2018 20:33:37'!
isOnBoard: aPoint
	"Answer whether aPoint is on the board"
	
	^ aPoint >= (1@1) and: aPoint <= (8@8)
	! !

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

!Piece methodsFor: 'operating' stamp: 'dhn 8/4/2018 19:31:19'!
seek: aRay
	"Update move and threat based on aRay"
	| done ix pos occupant |
	
	done _ false.
	ix _ 0.
	[done] whileFalse: [
		ix _ ix + 1.
		ix <= aRay size
			ifTrue: [
				pos _ position + (aRay at: ix).
				(self isOnBoard: pos)
					ifTrue: [
						occupant _ board pieces at: pos.
						(occupant)
							ifNil: [move add: (aRay at: ix)]
							ifNotNil: [
								occupant color = self color
									ifFalse: [threat add: (aRay at: ix)].
								done _ true]]
					ifFalse: [done _ true]]
			ifFalse: [done _ true]]! !

!Piece methodsFor: 'operating' stamp: 'dhn 8/2/2018 21:58:23'!
setRange
	"Answer the subset of scope which is within the board"
	
	^ OrderedCollection new
		addAll: (self onBoard: self scope)! !

!Piece methodsFor: 'operating' stamp: 'dhn 8/2/2018 20:21:40'!
trimScope: aCollection
	"Placeholder"
	
	^ aCollection! !

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

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:36:35'!
east
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: ea@0].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:32:03'!
north
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: 0@ea].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:40:02'!
northeast
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: ea@ea].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:43:40'!
northwest
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: ea negated@ea].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:32:55'!
south
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: 0@ea negated].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:42:43'!
southeast
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: ea@ea negated].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:41:17'!
southwest
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: ea negated@ea negated].
	^col! !

!Piece class methodsFor: 'rays' stamp: 'dhn 8/2/2018 22:33:59'!
west
	"Answer the ordered spaces in this direction"
	| col |

	col _ OrderedCollection new.
	1 to: 7 do: [:ea | col add: ea negated@0].
	^col! !

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

!Bishop methodsFor: 'operating' stamp: 'dhn 8/3/2018 20:38:25'!
potential
	"Determine the possible moves and threats from the current position"
	
	move _ OrderedCollection new.
	threat _ OrderedCollection new.
	self 
		seek: Piece northeast;
		seek: Piece southeast;
		seek: Piece southwest;
		seek: Piece northwest! !

!Bishop methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:53:14'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	^ Piece rightDiagonal, Piece leftDiagonal! !

!Bishop class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:15:16'!
symbol
	"Answer the letter symbol for self"
	
	^ 'b'! !

!King methodsFor: 'operating' stamp: 'dhn 8/4/2018 21:24:56'!
potential
	"Determine the possible moves and threats from the current position"
	
	move _ OrderedCollection new.
	threat _ OrderedCollection new.
	self 
		seek: {0@-1};
		seek: {0@1};
		seek: {1@0};
		seek: {-1@0};
		seek: {1@1};
		seek: {1@-1};
		seek: {-1@-1};
		seek: {-1@1}! !

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

!Knight methodsFor: 'operating' stamp: 'dhn 8/4/2018 21:13:46'!
potential
	"Determine the possible moves and threats from the current position"
	
	move _ OrderedCollection new.
	threat _ OrderedCollection new.
	self try: self scope
! !

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

!Knight methodsFor: 'operating' stamp: 'dhn 8/2/2018 21:39:45'!
trimScope: aCollection
	"Answer the open spaces within aCollection"
	
	^ aCollection select: [:ea | (board pieces at: ea) = nil]! !

!Knight methodsFor: 'operating' stamp: 'dhn 8/4/2018 21:11:31'!
try: aCollection
	"Determine the possible moves and threats from the current position"
	| pos occupant |
	
	aCollection do: [:ea |
		pos _ position + ea.
		(self isOnBoard: pos)
			ifTrue: [
				occupant _ board pieces at: pos.
				(occupant notNil and: [occupant color ~= self color])
					ifTrue: [threat add: ea]
					ifFalse: [occupant ifNil: [move add: ea]]]]! !

!Knight class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:16:36'!
symbol
	"Answer the letter symbol for self"
	
	^ 'n'! !

!Pawn methodsFor: 'operating' stamp: 'dhn 8/4/2018 20:01:08'!
potential
	"Determine the possible moves and threats from the current position"
	
	move _ OrderedCollection new.
	threat _ OrderedCollection new.
	color = 'w'
		ifTrue: [ "white pawn"
			self rank = 7
				ifTrue: [self try: {0@-1. 0@-2}]
				ifFalse: [self try: {0@-1}].
				self threaten: {-1@-1. 1@-1}]
		ifFalse: [ "black pawn"
			self rank = 2
				ifTrue: [self try: {0@1. 0@2}]
				ifFalse: [self try: {0@1}].
				self threaten: {-1@1. 1@1}]
! !

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

!Pawn methodsFor: 'operating' stamp: 'dhn 8/4/2018 19:58:15'!
threaten: aCollection
	"Update threat based on aCollection"
	| pos occupant |
	
	aCollection do: [:ea |
		pos _ position + ea.
				(self isOnBoard: pos)
					ifTrue: [
						occupant _ board pieces at: pos.
						(occupant) ifNotNil: [
							occupant color = self color
								ifFalse: [threat add: ea]]]]
! !

!Pawn methodsFor: 'operating' stamp: 'dhn 8/4/2018 21:03:55'!
try: aCollection
	"Determine the possible moves from the current position"
	| pos occupant |
	
	aCollection do: [:ea |
		pos _ position + ea.
		(self isOnBoard: pos)
			ifTrue: [
				occupant _ board pieces at: pos.
				(occupant) 
					ifNil: [move add: ea]
					ifNotNil: [^ nil]]]! !

!Pawn class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:13:16'!
symbol
	"Answer the letter symbol for self"
	
	^ 'p'! !

!Queen methodsFor: 'operating' stamp: 'dhn 8/3/2018 20:41:31'!
potential
	"Determine the possible moves and threats from the current position"
	
	move _ OrderedCollection new.
	threat _ OrderedCollection new.
	self 
		seek: Piece north;
		seek: Piece south;
		seek: Piece east;
		seek: Piece west;
		seek: Piece northeast;
		seek: Piece southeast;
		seek: Piece southwest;
		seek: Piece northwest! !

!Queen methodsFor: 'operating' stamp: 'dhn 8/2/2018 14:50:41'!
scope
	"Answer the theoretical scope of movement, relative to the current position"
	
	^ Piece rightDiagonal, Piece leftDiagonal, Piece vertical, Piece horizontal! !

!Queen class methodsFor: 'definition' stamp: 'dhn 7/22/2018 17:15:43'!
symbol
	"Answer the letter symbol for self"
	
	^ 'q'! !

!Rook methodsFor: 'operating' stamp: 'dhn 8/3/2018 20:16:15'!
potential
	"Determine the possible moves and threats from the current position"
	
	move _ OrderedCollection new.
	threat _ OrderedCollection new.
	self 
		seek: Piece north;
		seek: Piece south;
		seek: Piece east;
		seek: Piece west
		! !

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
