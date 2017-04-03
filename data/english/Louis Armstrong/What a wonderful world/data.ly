\version "2.14.2"

first = {
	\clef treble
	\key c\major
	\time 4/4
	\tempo 4=70
	\relative c' {
	  \partial 4 g8 b8 | c4. e8 g2 | r8 a8 a a g2 | r8 f8 f f e2 | r8 d8 d d c4 ~ \tuplet 3/2 {c8 c8 c8} |
	  c4 ~ \tuplet 3/2 {c8 c c} c2 | r4 c8 c8 \tuplet 3/2 {b4 c4 d4} | e1 ~ | e2 r4

	  g,8 b8 | c4. e8 g4. g8 | a4. a8 g4. g8 | f4 ~ \tuplet 3/2 {f8 f f} e4. e8 | d4 ~ \tuplet 3/2 {d8 d d} c4 ~ \tuplet 3/2 {c8 c c} |
	  c4 ~ \tuplet 3/2 {c8 c c} c2 | r4 c8 c8 \tuplet 3/2 {b4 c d} | c1 ~ | c2 r4.
	  
	  c8 | d8 d d d d g,4 g8 | f'8 e e dis8 e4. c8 | d8 d8 d8 d8 d8 g,4 d'8 | f8 e e dis e4 e8 g8 |
	  a4 a8 a8 g4 ~ \tuplet 3/2 {g8 e8 g8} | a4 a8 a8 g2 | r8 a8 a8 a8 g8 g4. | f4 e4 d4
	  
	  g,8 b8 | c4. e8 g4. g8 | a4. a8 g2 | r8 f8 f f e4. e8 | d4 ~ \tuplet 3/2 {d8 d d} c4 ~ \tuplet 3/2 {c8 c c} |
	  c4 ~ \tuplet 3/2 {c8 c8 c8 } c2 | r4 c8 c8 \tuplet 3/2 {b4 c4 d4} | e1 \bar "|."
	}
}


text = \lyricmode {
	I see trees of green, red ro -- ses too,
	I see them bloom for me and you,
	and I think to my -- self: what a won -- der -- ful world.

	I see skies of blue and clouds of white,
	the bright bles -- sed day, the dark sa -- cred night,
	and I think to my -- self: what a won -- der -- ful world.

	The co -- lors of the rain -- bow so pret -- ty in the sky,
	are al -- so on the fa -- ces of peo -- ple go -- ing by,
	I see friends sha -- king hands say -- ing how do you do,
	they are really say -- ing I love you.

	I hear ba -- bies cry, I watch them grow,
	They'll learn much more than I'll ev -- er know,
	and I think to my -- self: what a won -- der -- ful world.
}

harmonies = \chordmode {
  s4 c2 e2:m f2 e2:m d2:m7 c2 e2:7 a2:m
  as1 g1:7 c1 f2:maj g2:7
  
  c2 e2:m f2 e2:m d2:m7 c2 e2:7 a2:m
  as1 g1:7 c2 f2 c1

  g1:7 c1 g1:7 c1 a2:m g2 a2:m g2 a2:m cis2:dim
  d4:m7 cis2:dim g4:7

  c2 e2:m f2 e2:m d2:m7 c2 e2:7 a2:m
  as1 g1:7 c1

}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \text }
		>>
	>>
}
