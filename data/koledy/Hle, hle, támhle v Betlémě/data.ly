\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 60
	\clef treble
	\key d\major
	\time 2/4
	\relative c' {
		d8 a8 d8 a8 | d fis8 a4 | a8 a16( b16) a16( g16) fis8 |
		fis16( g16) fis16( e16) d4 |\break
		a'8 fis8 a8 fis8 | a8 d8 a8 fis8 |
		g8 e8 g8 e8 | a8 b8 g8 e8 | d8 a8 d8 a8 | d8 fis8 a4 |
		a8 a16( b16) a16( g16) fis8 | fis16( g16) fis16( e16) d4 |\break
		\repeat volta 2 {
			a'8 a16( b16) fis8 fis16( g16) | e8 e16( fis16) cis8 cis16( d16) |
			a'8 a16( b16) fis8 fis16( g16) | e8 e16( fis16) d4
		}
	}
}

SecondVoice = {
	\relative c' {
		s2 s2 s2 s2
		s2 s2 s2 s2
		s2 s2 s2 s2
		fis8 fis8 d8 d8 | cis8 cis8 a8 a8 |
		fis'8 fis8 d8 d8 | cis8 cis8 a4 |
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Hle, hle, tam -- hle v_Bet -- lé -- mě sví -- tí se tam,
	zdá -- se mně; nad Bet -- lé -- mem sví -- tí hvěz -- da,
	to jest nám ne -- o -- by -- čej -- ná, co to tam mů -- že bý -- ti,
	mu -- sí me to zku -- si -- ti.
	Du -- dly, du -- dly, du -- dly, du -- dly, du -- dly, du -- dly, du -- dly dy.
}

harmonies = \chordmode {
	d2 d2 d2 a4:7 d4
	d2 d2 e2:m a2:7 d2 d2 d2
	a4:7 d4
	d2 a2:7 d2 a4:7 d4
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
	>>
}

TextBelow = \markup{}
