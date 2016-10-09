\version "2.14.2"

%%number=5
%%page=32

first = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 4 = 90
	\relative c'' {
		b4 b4 c4 c4 | b4 a8 g8 ~ g4 r4 |
		g4 g4 a4 a4 | g4 fis8 e8 ~ e4 r4 \bar "|."
	}
}

second = {
	\clef treble
	\key g\major
	\time 4/4
	\relative c'' {
		g4 g4 e4 e4 | fis4 fis8 b8 ~ b4 r4 |
		e,4 e4 e4 e4 | dis4 dis8 b8 ~ b4 r4 |
	}
}

third = {
	\clef bass
	\key g\major
	\relative c' {
		g4 g4 c,4 c4 | b4 dis8 e8 ~ e4 r4 |
		c4 c4 a4 a4 | b4 dis8 e8 ~ e4 r4 |
	}
}

text = \lyricmode {
	Sei -- gneur, prends pi -- tié de nous!
	Sei -- gneur, prends pi -- tié de nous!
}

harmonies = \chordmode {
	g2 c2 b2:7 e2:m c2 a2:m b2:7 e2:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {{ \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"violin"
  			\new Voice = "first"
    			{ \transpose d d { \first } }
			\addlyrics { \text }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice= "second"
    			{ \transpose d d { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"cello"
  			\new Voice = "third"
    			{ \transpose c' c' { \third } }
		>>
	>>
}

TextBelow = \markup{}
