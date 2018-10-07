\version "2.14.2"

FirstVoice = {
  	\tempo 2 = 100
	\clef treble
	\key f\major
	\time 4/4
	\relative c' {
	  	c4 c8 c8 c8 d4 f8( | f1) | a4 a8 a8 a8 g4 f8( | f1) | \break
		d4 d8 d8 d8 e4 f8( | f1) | f4 f8 f8 f8 d4 c8( | c1) | \break
	  	c4 c8 c8 c8 d4 f8( | f1) | a4 a8 a8 a8 g4 f8( | f2) f8 f4 a8( | \break
		a2) a8 a4 g8( | g2) a8 g4 f8( | f1 | f2) r2
		\bar "|."
	}
}

texti = \lyricmode {
	\set stanza = #"R: "
	This lit -- tle light of mine, I'm gon -- na let it shine.
	This lit -- tle light of mine, I'm gon -- na let it shine.
	This lit -- tle light of mine, I'm gon -- na let it shine.
	Let it shine, let it shine, let it shine.
}



harmonies = \chordmode {
  	f1 f1 f1 f1:7
	bes1 bes1 f1 f1 f1 f1
	a1 d1:m f1 c1:7 f2 bes2 f1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>

	>>
}
