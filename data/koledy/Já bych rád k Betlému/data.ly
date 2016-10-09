\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key d\major
	\time 3/4
	\relative c'' {
		a4 d4 fis,4 | g8 b8 e,4 r4 | fis4 a4 d,4 | cis8 e8 a,4 r4 |
		d4 fis8( d8) fis8( a8) | a8 g8 b8( g8) e4 | 
		d4 fis8( d8) fis8( a8) | a8 g8 b8( g8) e4 | 
		a2 fis8( d8) | e8 fis8 d4 r4 | \break
		a'4 d4 fis,4 | g8 b8 e,4 r4 | fis4 a4 d,4 | cis8 e8 a,4 r4 |
		d8 d8 fis8 d8 fis8 a8 | a8( g8) b8( g8) e4 | 
		d8 d8 fis8 d8 fis8 a8 | a8( g8) b8( g8) e4 | 
		a8. a16 fis4 r4 | a8. a16 fis4 r4 |
		d'4 a8( fis8) g8( e8) | d8 cis8 d4 r4
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
		fis4 fis4 d4 | e8 g8 cis,4 s4 | d4 cis4 b4 |
		cis8 g8 a4 s4 |
		d4 d8( a8) d8( fis8) | fis8 e8 g8( e8) cis4 |
		d4 d8( a8) d8( fis8) | fis8 e8 g8( e8) cis4 |
		fis2 d8( a8) | cis8( a8) d4 s4 |
		fis4 fis4 d4 | e8 g8 cis,4 s4 | d4 cis4 b4 |
		cis8 g8 a4 s4 |
		d8 d8 d8 a8 d8 fis8 | fis8( e8) g8( e8) cis4 |
		d8 d8 d8 a8 d8 fis8 | fis8( e8) g8( e8) cis4 |
		fis8. fis16 d4 s4 | fis8. fis16 d4 s4 |
		fis4 fis8( d8) e8( cis8) | d8 cis8 d4
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Já bych rád k_Bet -- lé -- mu, k_Je -- žíš -- ku ma -- lé -- mu.
	Mám do -- ma kře -- pe -- li -- čku a pěk -- nou že -- žu -- li -- čku,
	ty mu od -- ve -- du. Bu -- de že -- žu -- lič -- ka vy -- rá -- žet Je -- žíš -- ka.
	U hla -- vič -- ky je -- ho se -- dá -- vat, lí -- bez -- ně mu bu -- de ku -- ká -- vat:
	Ku -- ku -- ku! Ku -- ku -- ku! Zdráv bu -- diž Je -- žíš -- ku!
}

harmonies = \chordmode {
	d2. e4:m a2:7 | d2 g4 | a4 a2:7 |
	d2. | g2 a4:7 | d2. | g2 a4:7 |
	d2. | a4:7 d2 | d2. | e4:m a2 | d2 g4 | a4 a2:7 |
	d2. | g2 a4:7 | d2. | g2 a4:7 |
	d2. | d2. | d4 a2:7 | d2.
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
