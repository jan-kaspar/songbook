\version "2.14.2"

%%number=58
%%page=123

first = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 72
	\relative c' {
		f2 g4. g8 | c4 a8 a8 f4 g8 g8 | a4 f8 f8 d4 f8 f8 | g2 g2 \bar "|."

	}
}

second = {
	\relative c' {
		d2 e4. e8 | f4 f8 f8 d4 d8 d8 | f4 c8 c8 bes4 d8 d8 | e2 d2
	}
}

third = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c' {
	 	a2 c4. c8 | c4 c8 c8 bes4 bes8 bes8 | c4 a8 a8 g4 a8 a8 | c2 bes2
	}
}

fourth = {
	\relative c {
		d2 c4. c8 | a4 f8 f8 bes4 g'8 g8 | f4 f8 f8 g4 d8 d8 | c2 g2
	}
}

text = \lyricmode {
	Kris -- tus, din An -- de i oss är en käl -- la med por -- lan -- de vat -- ten.
}

textI = \lyricmode {
	Cris -- to, lo Spi -- ri -- to tue è sor -- gen -- te per noi d'ac -- qua vi -- va.
}

harmonies = \chordmode {
	d2:m c2 f2 bes4 g4:m
	f2 g4:m d4:m
	c2 g2:m
}

\layout {
  \context {\ChordNames \consists Instrument_name_engraver }
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
			\addlyrics { \textI }
  			\new Voice= "second"
    			{ \voiceTwo \transpose c' c' { \second } }
		>>
		\new ChordNames {
			\set ChordNames.instrumentName = #"CAPO V"
			\transpose d' a { \harmonies }
		}
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
