\version "2.14.2"

FirstVoice = {
  	\tempo 2 = 100
	\clef treble

	\key c\major
	\time 4/4
	\relative c'' {
		c2 c4 a4 | g2 g4 e | g4 g2 d4 | g1 | g4 b2 a4 | g2 f2 | e1 | r4 g4 a4 b4 |
		c2 c4 a4 | g2 g4 e | g4 g2 d4 | g1 | g4 b2 a4 | g2 b2 | c1( | c4) r4 r2 |
	}
	\break
	\key g\major
	\relative c' {
		d4 d4 d4 d4 | b'4 b4 g4 g4 | a4 a4 fis4 fis4 | g4 g4 d2 |
		d4 d4 d4 d4 | b'4 b4 g4 g4 | a4 a4 fis4 fis4 | g2 r2 |
		d4 d4 d4 d4 | b'4 b4 g4 g4 | a4 a4 fis4 fis4 | g4 g4 d2 |
		d4 d4 d4 d4 | b'4 b4 g4 g4 | a4 a4 fis4 fis4 | g4 r2. |
		\bar "|."
	}
}

text = \lyricmode {
  	\set stanza = #"R. "
	Vá -- no -- ce, Vá -- no -- ce, při -- chá -- ze -- jí, zpí -- vej -- me přá -- te -- lé, po ro -- ce
	Vá -- no -- ce, Vá -- no -- ce, při -- chá -- ze -- jí, šťast -- né a ve -- se -- lé.
  	\set stanza = #"1. "
	Proč jen dě -- da říct si ne -- dá tlu -- če o stůl v_před -- sí -- ni a pak, bě -- da,
	mar -- ně hle -- dá kap -- ra pod skří -- ní.
	Na -- še te -- ta pe -- če lé -- ta na Vá -- no -- ce vá -- noč -- ku, ne -- rep -- tá -- me a -- spoň má -- me ně -- co pro koč -- ku.
}

harmonies = \chordmode {
	c1 c1 g1:7 g1:7 g1:7 g1:7 c1 c1 c1 c1 g1:7 g1:7 g1:7 g1:7 c1 c1
	g1 g1 d1:7 g1 g1 g1 d1:7 g1 g1 g1 d1:7 g1 g1 g1 d1:7 g2 g2:7
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
		>>
	>>
}
