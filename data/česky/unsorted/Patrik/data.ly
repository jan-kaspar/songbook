\version "2.14.2"

first = {
  	\tempo 4 = 100
	\clef treble
	\key g\major
	\time 6/8
	\relative c' {
	  	\partial 8 b8 |
		e4 e8 e8 e8 b8 | e4 fis8 g4 g8 | b4 b8 b4 a8 | g4 a8 b4 b,8 | \break
		e8 e8 e8 e4 b8 | e4 fis8 g4 g8 | fis4 fis8 a4 fis8 | e4 d8 e4 r8 \bar "|."
	}
}

second = {
	\clef treble
	\key g\major
	\time 6/8
	\relative c'' {
	  	s8
		g4 g8 g8 g8 fis8 | e4 e8 b4 b8 | d4 d8 d4 c8 | b4 c8 d4 g8 |
		g8 g8 g8 g4 fis8 | g4 a8 b4 b8 | b4 b8 b4 b8 | g4 fis8 g4 r8 |
	}
}

third = {
	\clef bass
	\key g\major
	\time 6/8
	\relative c {
	 	s8
		e4 e8 e4 e8 | 
		e4 e8 e4 fis8 | 
		g4 g8 g4 g8 | 
		g4 g8 g4 fis8 | 
		e4 e8 e4 e8 | 
		e4 e8 e4 fis8 | 
		b,4 b8 fis'4 dis8 | 
		e4 e8 e4 r8 | 
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Sta mil jdou ko -- le -- je pré -- ri -- í, 
	jak stří -- br -- ný šíp le -- tí dál. 
	Tam Pat -- rick se ten -- krát naj -- mout dal 
	a dřel se s_tou -- hle drá -- á -- hou.
}

harmonies = \chordmode {
	s8 e2.:m e2.:m g2. g2. e2.:m e2.:m b2.:7 e2.:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
		  	\set Staff.midiInstrument = #"violin"
  			\new Voice = "first"
    			{ \voice \transpose c' c' { \first } }
			\addlyrics { \text }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "second"
    			{ \voice \transpose c' c' { \second } }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "third"
    			{ \voice \transpose c' c' { \third } }
		>>
	>>
}
