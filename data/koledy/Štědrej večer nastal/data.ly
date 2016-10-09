\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key c\major
	\time 2/4
	\relative c' {
		c4 e4 | f8 e8 d4 | c4 r4 |
		e4 g4 | g8 f8 f8 a8 | d,4 f4 | f8 e8 e8 g8 | 
		c,4 e4 | f8 e8 d4 | c4 r4 |
		\bar "|."
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Štěd -- rej ve -- čer na -- stal,
	štěd -- rej ve -- čer na -- stal,
	ko -- le -- dy při -- chys -- tal,
	ko -- le -- dy při -- chys -- tal.
}

harmonies = \chordmode {
	c2 g2 c2 s2 f2 g2 c2 a2:m d4:m g4:7 c2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
		>>
	>>
}
