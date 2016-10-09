\version "2.14.2"

%%number=131

first = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 4 = 90
	\relative c' {
	  	\partial 4 b8 b8
		\repeat volta 2 {
			e4 e8 e8 fis4. fis8 | g4 g8 g8 fis4 g8 a8 | b4 b8 c8 d4. c8 |
			c4 b8 b8 a4 b8 b8 | b4 g4 g8 e4 g8 | a4 a2 g8 g8 |
			g4 e4 g8 a4 g8 | fis4 fis2 b,8 b8
		}
	}
}

second = {
	\clef treble 
	\key f\major
	\relative c' {
	 	s4
		s2 d4. d8 | e4 e8 e8 b4 e8 fis8 | g4 g8 g8 g4. e8 | e4 d8 e8 fis4 d8 d8 | e4 e4 d8 e4 e8 | fis4 fis2 d8 d8 |
		e4 e4 c8 e4 e8 | fis4 fis2 b,8 b8
	}
}

third = {
	\clef bass
	\key g\major
	\relative c {
	 	b8 b8 |
		d4 e8 e8 d4. d8 | e4 e8 e8 b4 e8 fis8 | g4 g8 e8 b4. a8 | a4 b8 c8 d4 g,8 g8 | c4 c4 b8 b4 e8 | d4 d2 g,8 g8 |
		c4 c4 a8 c4 e8 | b4 b2 b8 b8
	}
}

textI = \lyricmode {
	Can -- ta -- rei ao Se -- nhor, en -- quan -- to vi -- ver; lou -- va -- rei o meu Deus en -- quan -- to_e -- xis -- tir.
	Ne -- le_en -- con -- tro_a mi -- nha_a -- le -- gri -- a.
	Ne -- le_en -- con -- tro_a mi -- nha_a -- le -- gri -- a.
}

emphasize = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

text_pron = \lyricmode {
  	\emphasize
	Kan -- ta -- rej au Se -- ňor an -- kvan -- tu vi -- ver; lou -- va -- rej u meu -- Deuš an kvan -- tu_i -- zi -- štýr.
	Ně -- le_an -- kon -- trua -- mi -- ňa -- le -- grí -- ja.
	Ně -- le_an -- kon -- trua -- mi -- ňa -- le -- grí -- ja.
}

harmonies = \chordmode {
	b4:m | e2:m d2 | e2:m b2:m | g1 | a2:m d2
	c2 c2:2 | d2. g4 | c2 a2:m | b1
}


FullLayout = {
<<
	\new ChoirStaff <<
		\new ChordNames \with { midiInstrument = "acoustic guitar (nylon)" }
		{
			\harmonies
		}

		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \first }
			\addlyrics { \textI }
			\addlyrics { \text_pron }
  			\new Voice= "second"
    			{ \voiceTwo \second }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"cello"
  			\new Voice = "third"
    			{ \voiceTwo \third }
		>>
	>>

	\new Staff \with { \remove "Staff_performer" }
	<<
		\set Staff.instrumentName = #"alto recorder"
  		\new Voice = "thirdV"
			{ \voiceOne \transpose f c' { \first } }
	>>
>>
}

\paper{
	indent = 2.5\cm
}
