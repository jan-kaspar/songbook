\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 70
	\clef treble
	\key c\major
	\time 2/4
	\relative c' {
		c8( e8) g8 g8 | g4 c8( a8) | g4 f4 | e2
		c8( e8) g8 g8 | g4 c8( a8) | g4 f4 | e2
		\repeat volta 2 {
			g8 g8 f8 e8 | d8 e8 f8 d8 |
			g8 g8 f8 e8 | d8 e8 f8 d8 |
			e4 d4 | c2
		}
		\bar "|."
	}
}

ThirdVoice = {
	\clef bass
	\relative c {
		e4 g4 | g4 a4 | g4 g4 | c2
		e,4 g4 | g4 a4 | g4 g4 | c2
		g2 g2 g2 g2 g4 f4 e2
	}
}

FourthVoice = {
	\relative c {
		c4 c4 | c4 f4 | c4 b4 | c2
		c4 c4 | c4 f4 | c4 b4 | c2
		c2 b2 e2 b2 c4 b4 c2
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Ve -- se -- lé vá -- noč -- ní ho -- dy, zpí -- vej -- te dít -- ky ko -- le -- dy,
	o tom, co se vskut -- ku sta -- lo, že se li -- dem na -- ro -- di -- lo dě -- ťát -- ko.
}

harmonies = \chordmode {
	c2 f2 c4 g4:7 c2
	c2 f2 c4 g4:7 c2
	c2 g2:7 c2 g:7 c4 g4:7 c2
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
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \transpose c' c' { \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \transpose c' c' { \FourthVoice } }
		>>
	>>
}
