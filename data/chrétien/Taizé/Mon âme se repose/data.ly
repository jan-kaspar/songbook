\version "2.14.2"

%%number=32
%%page=124

first = {
	\clef treble
	\key g\major
	
	\tempo 4 = 66
	\relative c' {
		\time 4/4
		\partial8 fis8
		\repeat volta 2 {
			g8 g8 g8 a8 g4 fis4 | e4 e8 fis8 dis4 r8 fis8 | g4. b8 a8( g4) fis8 |
			\time 2/4 g2
			\time 4/4 g4 g8 a8 g4 fis4 | e8 e8 e8 fis8 dis4 dis4 | r4 g8 g8 fis8( e4) dis8
			\time 2/4 e4 r8 fis8
	  }
	}
}

second = {
	\relative c' {
	 	dis8
		e8 e8 e8 e8 d4 d4 | b4 c8 c8 b4 r8 d8 | e4. g8 e4 d4
		d2
		e4 e8 e8 d4 d4 | b8 b8 c8 c8 b4 b4 | r4 b8 b8 c4 b4
		b4 r8 dis8
	}
}

third = {
	\clef bass
	\key g\major
	\time 4/4
	\relative c' {
		b8
		b8 b8 c8 c8 b4 a4 | g4 g8 a8 fis4 r8 b8 | b4. d8 c8( b8)  a4
		b2
		b4 c8 c8 b4 a4 | g8 g8 g8 a8 fis4 fis4 | r4 e8 e8 a8( g8) fis4
		g4 r8 b8
	}
}

fourth = {
	\relative c {
		b8
		e8 e8 c8 c8 g'4 d4 | e4 c8 a8 b4 r8 b8 | e4. b8 c4 d4
		g2
		e4 c8 c8 g'4 d4 | e8 e8 c8 a8 b4 b4 | r4 e8 e8 a,4 b4
		e4 r8 b8
	}
}

text = \lyricmode {
	Mon â -- me se re -- po -- se_en paix sur Dieu seul:
	de lui vient mon sa -- lut.
	Oui, sur Dieu seul mon â -- me se re -- po -- se,
	se re -- po -- se_en paix.
	Mon
}

harmonies = \chordmode {
	b8 | e4:m c4 g4 d4 | e4:m a4:m b2 | e4:m g4/b c4 d4 | g2
	e4:m c4 g4 d4 | e4:m a4:m b2 | s4 e4:m a4:m b4 | e4:m b4
}

FullLayout = {
	\new ChoirStaff <<
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
