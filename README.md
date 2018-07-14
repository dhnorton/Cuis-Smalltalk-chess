# Cuis-Smalltalk-chess

Utility programs for the study of the game of Chess. Classes and their purposes are as follows:

## InFen

Forsyth–Edwards Notation (FEN) is a standard notation for describing a particular board position of a chess game[1]. The InFen class transforms a text file containing multiple groups of FEN records into a set of files named *.fen, which are compatible with XBoard, a graphical chessboard for the X Window System[2]. XBoard requires the first record of a *.fen file to define the position of pieces on the chess board. The records which follow are ignored.

[1] https://en.wikipedia.org/wiki/Forsyth%E2%80%93Edwards_Notation

[2] https://en.wikipedia.org/wiki/XBoard

## Progress

The Progress class computes the winning percentage (as a decimal) of a series of win-loss pairs, such as may be encountered during "Tactics Training" at chesstempo.com[3].

[3] https://chesstempo.com
