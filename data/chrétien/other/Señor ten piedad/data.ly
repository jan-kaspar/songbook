\version "2.14.2"

intro_i = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 100
	\relative c''' {
		a2^\markup{\italic intro} bes8 a8 g8 a8 | f2 d8 e8 f8 g8 |
	}
}

intro_ii = {
	\relative c'' {
		a2 d4 bes4 | a8 g8 f8 e8 d4 f4 |
	}
}

melody = {
	\clef treble
	\key bes\major
	\time 4/4
	\relative c'' {
		s1*2

		\repeat volta 2 {
	  		c8^\markup{\italic refrain} c c c c  bes a g | f2 f2 \break | r4 g8 a bes a g f | g1 |
			c8 c c c cis4 cis8 cis8 | d4 a4 a8( g f g) | f4 g8 a g f d e | f1
		}
	}
}

text_i = \lyricmode {
	\set stanza = #"1., 3. "
	Se -- ñor ten pie -- da -- d de no -- so -- tros, de no -- so -- tros ten pie -- dad.
	Se -- ñor ten pie -- dad de no -- so -- tros, oh oh de no -- so -- tros ten pie -- dad.
}

text_ii = \lyricmode {
	\set stanza = #"2. "
	Cri -- sto ten pie -- da -- d de no -- so -- tros, de no -- so -- tros ten pie -- dad.
	Cri -- sto ten pie -- dad de no -- so -- tros, oh oh de no -- so -- tros ten pie -- dad.
}

harmonies = \chordmode {
	f2 bes f d:m
	f2 c2:7 | d1:m | bes1 | c2 c2:7 | f2 a2:7 | d1:m | bes2 c2 | f1
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			%\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"chant"
		  	\set Staff.shortInstrumentName = #"chant"
			\set Staff.midiInstrument = #"flute"
  			\new Voice { \voiceOne \intro_i }
  			\new Voice { \voiceTwo \intro_ii }
  			\new Voice { \melody }
			\addlyrics { \text_i }
			\addlyrics { \text_ii }
		>>

	>>
}
