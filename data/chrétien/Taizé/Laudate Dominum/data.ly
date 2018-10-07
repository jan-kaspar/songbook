\version "2.14.2"

first = {
	\clef treble
	\key c\major
	\time 3/4
	\tempo 4 = 116
	\relative c'' {
	  	\repeat volta 2 {
			a4 a a | gis8 fis gis2 | a4 a a | b8 a8 b2 |
			c4 c r4 | b4 b4 r4 | 
		}
		\alternative {
			{ c4 c4 d4  | b2. }
			{ a4 a gis | a2. }
		}

		\bar "|."
	}
}

second = {
	\relative c' {
		e4 e e | e8 d e2 | e4 e e | g8 f g2 |
		g4 g4 s4 | g4 g s4 | a4 f d | e2.
		e4 f4 d4 | c2.
	}
}

third = {
	\clef bass
	\key c\major
	\time 3/4
	\relative c' {
		c4 c c | b8 a b2 | c4 c c | d8 c d2 |
		e4 e r4 | d4 d4 r4 | c c d | b2.
		c4 d8( c8) b4 | a2.
	}
}

fourth = {
	\relative c' {
		a4 a a | e8 e8 e2 | a4 a a | g8 g g2 |
		c4 c4 s4 | g4 g4 s4 | a4 f d | e2.
		a4 d,4 e4 | a,2.
	}
}

text = \lyricmode {
	Lau -- da -- te Do -- mi -- num, lau -- da -- te Do -- mi -- num,
	om -- nes gen -- tes, al -- le -- lu -- ia!
	al -- le -- lu -- ia!
}

harmonies = \chordmode {
	a2.:m e2. a2.:m g2. c2. g2. a4:m f4 d4:m6 e2.
	a4:m d:m e a2.:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
			%\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \transpose c' c' { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo \transpose c' c' { \second } }
		>>
		\new Staff <<
			%\set Staff.midiInstrument = #"cello"
  			\new Voice = "third"
    			{ \voiceOne \transpose c' c' { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' c' { \fourth } }
		>>
	>>
}
