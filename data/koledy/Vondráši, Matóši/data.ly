\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 110
	\clef treble
	\key d\major
	\time 2/4
	\relative c' {
		d4 d8 fis8 | d4 d8 fis8 | g8 fis8 e8 d8 | e4 d4
		d4 d8 fis8 | d4 d8 fis8 | g8 fis8 e8 d8 | e4 d4
		\break
		fis8 fis8 e8 e8 | d8 d8 cis4
		fis8 fis8 e8 e8 | d8 d8 cis4
		d8 d8 fis4 | d8 d8 fis4 | g8 fis8 e8 d8 | a'4 a,4 | d4 r4
		\bar "|."
	}
}

SecondVoice = {
	\relative c'' {
		s2 s2 s2 s2
		s2 s2 s2 s2
		a8 a8 g8 g8 | fis8 fis8 e4
		a8 a8 g8 g8 | fis8 fis8 e4
		s2 s2 s2 s2
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Von -- drá -- ši, Ma -- tó -- ši, víš -- li, co se sta -- lo?
	V_Bet -- lé -- mě na se -- ně na -- ro -- dil se ná -- hlo;
	ej, ej, ej, ej, v_Bet -- lé -- mě,
	ej, ej, ej, ej, na se -- ně.
	Vem do -- de, pře -- bí -- raj a do Bet -- lé -- ma hy -- baj.
}

harmonies = \chordmode {
	d2 s2 e2:m a4:7 d4
	d2 s2 e2:m a4:7 d4
	d4 a4:7 d4 a4:7 d4 a4:7 d4 a4:7
	d2 s2 e2:m a2:7 d2
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
  			\new Voice = "SecondVoice"
    			{ \transpose c' c' { \SecondVoice } }
		>>
	>>
}
