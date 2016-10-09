\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 60
	\clef treble
	\key d\major
	\time 2/4
	\relative c' {
		d8 d8 | a8 a8 | fis'8 fis8 d8 d8 | gis16( a16) b16( a16) gis16( a16) b16( a16) |
		gis16( a16) b16( gis16) a4 |\break
		g8 g16( b16) e,4 | fis8 fis16( a16) d,4 |
		e8 e8 d16( cis16) b16( a16) | d8 fis8 d8 fis8 |
		g8 g16( b16) e,4 | fis8 fis16( a16) d,4 |
		e8 e8 d16( cis16) b16( a16) | d8 fis8 d4 |
		\bar "|."
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Půj -- dem spo -- lu do Bet -- lé -- ma du -- daj, du -- daj, du -- daj, dá!
  	\set stanza = #"R: "
	Je -- žíš -- ku, pa -- náč -- ku, já tě bu -- du ko -- lí -- ba -- ti,
	Je -- žíš -- ku, pa -- náč -- ku, já tě bu -- du ko -- lí -- bat.
}

harmonies = \chordmode {
  	d2 s2 s2 e4 a4
	g4 a4:7 d4 b4:m e4:m a4:7 d2
	g4 a4:7 d4 b4:m e4:m a4:7 d2
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
	>>
}
