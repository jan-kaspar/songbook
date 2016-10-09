\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 60
	\clef treble
	\key g\major
	\time 6/8
	\relative c' {
		\repeat volta 2 {
			d8 e8 fis8 g4 g8 | a4 a8 b4. | c8 b8 a8 g4.
		} \break
		b8 b8 a8 b4 a8 | b8 g4 a4. | g8 fis8 e8 d4. | \break
		b'8 b8 a8 b4 a8 | b8 g4 a4. | c8 b8 a8 g4.
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
		\repeat volta 2 {
			s4. b8( c8) d8 | d8( e8) fis8 g4. | e8 d8 c8 b4. |
		}
		g'8 g8 fis8 g4 fis8 | g8 e4 fis4. | e8 d8 cis8 d4. |
		g8 g8 fis8 g4 fis8 | g8 e4 fis4. | e8 d8 c8 b4. |
	}
}

ThirdVoice = {
	\clef bass
	\key f\major
	\relative c {
		\repeat volta 2 {
			r2. | e4 c8 f4. | g,4 c8 f4.
	    }
		f2.( | f4.) c4. | a4 g8 c4. |
		f2.( | f4.) c4. | g4. c4. |
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Chtíc, a -- by spal, tak zpí -- va -- la, sy -- náč -- ko -- vi,
	Spi, ne -- bes dí -- tě mi -- lost -- né, Pán jsi a Bůh,
	pře -- je ti v_lás -- ce ce -- lý ráj, po -- zem -- ský luh.
}

text_rep = \lyricmode {
	mat -- ka, jež po -- no -- co -- va -- la, mi -- láč -- ko -- vi:
}

harmonies = \chordmode {
	g8 c8 d8 g4. | d4. g4. | a4:m d8:7 g4.
	g4 d8 g4 d8 | g8 e4:m d4. | e4:m a8:7 d4.
	g4 d8 g4 d8 | g8 e4:m d4. | a4:m d8:7 g4.
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
			\addlyrics { \text_rep }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose c' c' { \SecondVoice } }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \transpose f' g' { \ThirdVoice } }
		>>
	>>
}

TextBelow = \markup{}
