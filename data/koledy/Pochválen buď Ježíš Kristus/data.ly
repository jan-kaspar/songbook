\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 70
	\clef treble
	\key g\major
	\time 2/4
	\relative c' {
	  	\repeat volta 2 {
			d8 b'16( a16) g16( fis16) e16( d16) | e8 e8 e8 e8 | c'8 c8 fis,8 fis8 | g4 r4
		}
		\break
		g8. a16 b8 b8 | b8 a16( b16) c4 | 
		a8. a16 a8 a8 | a8 g16( a16) b4 |
		d,8 b'16( a16) g16( fis16) e16( d16) | e8 e8 e8 e8 | c'8 c8 fis,8 fis8 | g4 r4
		\bar "|."
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Po -- chvá -- len buď Je -- žíš Kris -- tus, mi -- lej Ma -- tě -- ji!
	Já do Bet -- lé -- ma bě -- žím, co se tam sta -- lo, ne -- vím,
	pro -- sím, bra -- tře, vrať se se mnou, ně -- co ti po -- vím.
}

textRep = \lyricmode {
	Až na vě -- ky! Kam pos -- pí -- cháš, bra -- tře On -- dře -- ji?
}

harmonies = \chordmode {
	g4 e4:m c4 a4:m d4 d4:7 g2
	g2 c2 d2 g2
	g4 e4:m c4 a4:m d4 d4:7 g2
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
			\addlyrics { \textRep }
		>>
	>>
}
