\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key c\major
	\time 4/4
	\relative c' {
		e4 e4 g4 g4 | f4 f8( a8) g4 g4 |
		e4 e4 g4 g4 | d4 d8( f8) e4 e4 |
		c'2 g4 e4 | f4 f8( a8) g2 |
		c2 g4 e4 | f4 d8( e8) c2
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
		c4 c4 e4 e4 | d4 d4 e4 e4 |
		c4 c4 e4 e4 | b4 b4 c4 c4 |
		e2 g4 e4 | d4 d4 e2 |
		e2 g4 e4 | d4 b4 c2 |
	}
}

ThirdVoice = {
	\clef bass
	\key c\major
	\time 4/4
	\relative c' {
		r4 g2 g4 | r4 g2 g4 |
		r4 g2 g4 | r4 g2 g4 |
		g1 | d8( e8) f4 e2 |
		g1 | d8( e8) f4 e2
	}
}

FourthVoice = {
	\relative c {
		c1 | g2 c2 |
		c1 | g2 c2 |
		c1 | d8( c8) b8( g8) c2 |
		c1 | g2 c2 |
	}
}

text = \lyricmode {
	Jak jsi krás -- né, ne -- vi -- ňát -- ko, v_pros -- třed bí -- dy, ne -- bo -- žát -- ko!
	Před te -- bú pa -- dá -- me, da -- ry své sklá -- dá -- me.
}

harmonies = \chordmode {
	c1 g2:7 c2
	c1 g2:7 c2
	c1 g2:7 c2
	c1 g2:7 c2
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
    			{ \voiceOne \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose c' c' { \SecondVoice } }
		>>

		\new Staff <<
		  	\set Staff.midiInstrument = #"violin"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \transpose c' c' { \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \transpose c' c' { \FourthVoice } }
		>>
	>>
}
