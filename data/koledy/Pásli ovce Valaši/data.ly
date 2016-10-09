\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key c\major
	\time 2/4
	\relative c'' {
		\repeat volta 2 {
			c8 g8 g8 f8 | e8 f8 g4 |
			c8 g8 g8 f8 | e8 d8 c4 |
		}
		\break
		\repeat volta 2 {
			c8 e8 e8 f8 | e8 d8 e4 | c8 e8 e8 f8 | e8 d8 c4
		}
	}
}

SecondVoice = {
	\relative c' {
		e8 e8 e8 d8 | c8 d8 e4 | e8 e8 e8 d8 | c8 b8 c4
%		c8 c8 c8 c8 | c8 b8 c4 |
%		c8 c8 c8 c8 | c8 b8 c4 |
		c4 c4 | b8 b8 c4 |
		c4 c4 | b8 b8 c4 |
	}
}

ThirdVoice = {
	\clef bass
	\key c\major
	\relative c' {
		g2 | g2 | g2 | g8 f8 e4 |
		e4. f8 | g2 |
		e4. f8 | g4 e4 |
	}
}

FourthVoice = {
	\clef bass
	\key c\major
	\relative c {
		c4. g8 | c8 g8 c4 |
		c4. g8 | c8 g8 c4 |
		c4. f8 | g2 |
		c,4. f8 | g4 c,4 |
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Pás -- li ov -- ce Va -- la -- ši, při bet -- lém -- ském sa -- la -- ši.
	Haj -- dom, haj -- dom tyd -- li dom, 
	haj -- dom, haj -- dom tyd -- li dom.
}

harmonies = \chordmode {
	c4. g8:7 | c8 g8:7 c4 |
	c4. g8:7 | c8 g8:7 c4 |
	c4. f8 | g4 c4 |
	c4. f8 | g4 c4 |
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
    			{ \voiceOne \FirstVoice }
			\addlyrics { \text }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \SecondVoice }
		>>

		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \ThirdVoice }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \FourthVoice }
		>>
	>>
}
