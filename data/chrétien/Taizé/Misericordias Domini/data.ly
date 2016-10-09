\version "2.14.2"

%%number=58
%%page=123

first = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 72
	\relative c' {
		f8 f8 f8 f8 e4 e4 f4f4 g2 a4 a8 a8 c4 g4 f4 e4 d2
	}
}

second = {
	\relative c' {
		d8 d8 d8 d8 cis4 cis4 d4 d4 e2 f4 f8 f8 e4 e4 d4 cis4 d2
	}
}

third = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c' {
		a8 a8 a8 a8 a4 a4 a4 a4 c2 c4 c8 c8 c4 c4 a4 a4 f2
	}
}

fourth = {
	\relative c {
		d8 d8 d8 d8 a4 a4 d4 d4 c2 f4 f8 f8 c4 c4 d4 a4 d2
	}
}

text = \lyricmode {
	Les mi -- sé -- ri -- cor -- des du Sei -- gneur à ja -- mais je les chan -- te -- rai
}

harmonies = \chordmode {
	d2:m a2 d2:m c2 f2 c2 d4:m a4 d2:m
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
