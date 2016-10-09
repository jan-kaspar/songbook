\version "2.14.2"

FirstVoice = {
  	\tempo 2 = 70
	\clef treble
	\key c\major
	\time 4/4
	\relative c' {
		e1 | f4 e4 dis4 e4 | f1 | fis4 g2. | a2 b4 c4 | d4 c4 b4 a4 | g1( | g4) r4 c,4 d4 | e2 e2 | e4 a2 g4 |
		c,2 c2 | c4 g'2 f4 | e1 | f4 e4 d4 c4 | d1( | d2.) r4 \break
		e1 | f4 e4 dis4 e4 | f1 | fis4 g2. | a2 b4 c4 | d4 c4 b4 a4 | g1( | g4) r4 c,4 d4 | e2 e2 | e4 a2 g4 |
		c1( | c2) c,4 d4 | e2 e2 | a4. b,8 b4 b4 | c1( | c2.) r4
		\bar "|."
	}
}

text = \lyricmode {
	Já sním o Vá -- no -- cích bí -- lých, Vá -- no -- cích, ja -- ké z_dět -- ství znám,
	zně -- ly zvon -- ky sa -- ní a kaž -- dé přá -- ní v_ten den spl -- ni -- lo se nám.
	Já sním o Vá -- no -- cích bí -- lých, vá -- noč -- ním strom -- ku zá -- ří -- cím,
	svět -- la sví -- ček, jme -- lí a sníh, tak byl krá -- sný den o Vá -- no -- cích.
}

harmonies = \chordmode {
	c1 s1 d1:m7 fis4 g2. f1 g1:7 c1 d2:m7 g2:7 c2 c2:maj c1:7 f1 f1:m c1 f2 d2:7 d1:m7 g1:7
	c1 s1 d1:m7 fis4 g2. f1 g1:7 c1 d2:m7 g2:7 c2 c2:maj c1:7 f1 f1:m
	c2 g2:dim d2:m7 g2:7 c1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
		>>
	>>
}
