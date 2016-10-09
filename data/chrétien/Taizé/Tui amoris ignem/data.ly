\version "2.14.2"

first = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 4 = 72
	\relative c' {
	  b4 b b b | e4 fis4 dis2 | e4 e8 fis8 g4 g4 | a4 g8 a8 b4 b4 |
	  b4 b4 c4 c4 | d4 a4 b2 | g4 g4 a4 g4 | fis8( e8) fis4 e2 \bar "|."
	}
}

second = {
	\relative c' {
	  b4 b b b | c c b2 | b4 b8 b8 e4 e4 | e4 e8 e8 dis4 dis4 |
	  e4 d4 c4 e4 | d8 e8 fis4 d2 | e4 e4 fis4 e4 | e4 dis4 e2 |
	}
}

third = {
	\relative c' {
	  g4 g4 fis4 fis4 | g4 a4 fis2 | g4 g8 fis8 e4 e4 | a4 b8 a8 fis4 fis4 |
	  	g4 g4 a4 g4 | fis8( g8) a4 g2 | c4 c4 c4 b4 | b4 fis4 g2
	}
}

fourth = {
	\clef bass
	\key g\major
	\relative c {
	  e4 e4 d4 d4 | c4 a4 b2 | e4 e8 d8 c4 c4 | c4 c8 c8 b4 b4 |
	  e4 e4 a,4 a4 | d4 d4 g2 | c4 b4 a4 e4 | b4 b4 e2
	}
}

text = \lyricmode {
	Ve -- ni San -- cte Spi -- ri -- tus,
	tu -- i a -- mo -- ris i -- gnem ac -- cen -- de.
	Ve -- ni San -- cte Spi -- ri -- tus,
	ve -- ni San -- cte Spi -- ri -- tus.
	veni Sancte Spiritus.
}


harmonies = \chordmode {
  e2:m b2:m/d c4 a4:m6 b2 | e2:m c2 | c2:6 b2
  e4:m e4:m7 a4:m a4:m7 | d2 g2 | c2 a4:m6 e4:m | b4:sus4 b4 e2:m 
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {{ \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne  \transpose d d { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo  \transpose d d { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "third"
    			{ \voiceOne \transpose c' c' { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' c' { \fourth } }
		>>
	>>
}

TextBelow = \markup{}
