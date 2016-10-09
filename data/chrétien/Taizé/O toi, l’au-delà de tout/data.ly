\version "2.14.2"

%%number=404

first = {
	\clef treble
	\key f\major
	\tempo 4 = 72
	\relative c' {
		\time 3/4
		\partial 8 d8
		\repeat volta 2 {
			d4 e8 g8 f8 e8 | d2 f8 g8 | a4 bes4 bes8 a8 | g2 a8 d8 | d4 c4 bes8 a8 | g4 a2
			\time 4/4
	  		a8 d,8 e8 f8 g4. a8 | f4 g8 f8 e4. d8
	  }
	}
}

second = {
	\relative c' {
	  s8 | s4 c8 e8 d8 c8 | a2 d8 e8 | f4 f4 g8 d8 | e2 f8 f8 | f4 e4 f8 f8 | f4 f2 |
	  d8 d8 d8 d8 cis4. e8 | d4 e8 d8 cis4. s8
	}
}

third = {
	\clef bass
	\key f\major
	\relative c' {
		\time 3/4
		a8 | a4 a8 a8 a8 g8 | f2 a8 c8 | c4 d4 bes8 bes8 | c2 c8 a8 | bes4 g4 bes8 c8 | d4 c2 |
		f,8 a8 bes8 a8 a4. a8 | a4 a8 a8 a4. a8
	}
}

fourth = {
	\relative c {
	  	d8 | d4 a8 a8 a8 a8 | d2 d8 c8 | f4 bes,4 g'8 g8 |c,2 f8 f8 | bes,4 c4 d8 f8 | bes4 f2 |
		d8 f8 g8 f8 e4. cis8 | d4 d8 d8 a4. d8
	}
}

text = \lyricmode {
	O toi l'au -- de -- là de tout, quel es -- prit peut te sai -- sir?
	Tous les ê -- tres te cé -- lè -- brent, le dé -- sir de tous a -- spi -- re vers toi. O
}

harmonies = \chordmode {
	s8 d4:m a2:m d2:m d8:m c8 f4 bes4 g4:m c2 f8 d8:m bes4 c4 bes8 f8 bes4 f2 d2:m a2:7 d2:m a2
}

FullLayout = {
  	\new ChoirStaff	<<
		\new ChordNames {
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \transpose c' c' { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo \transpose c' c' { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"cello"
  			\new Voice = "third"
    			{ \voiceOne \transpose c' c' { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' c' { \fourth } }
		>>
	>>
}

TextBelow = \markup{}
