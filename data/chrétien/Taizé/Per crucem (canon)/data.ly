\version "2.14.2"

%%number=47

first = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 90
	\relative c' {
		d2 d2( c2) f4. f8 f4 f4 e4 d4 e2 d2 \break
		d8 f8 a8 d8 bes8 a8 g4 | c,8 e8 g8 c8 a8 g8 f4 | bes,8 d8 f8 bes8 g8 f8 e4 | a4 e4 f2 \break
		a2 bes2( c2) a4. a8 bes4 f4 g4 g4 a4( e4) f2\break
		d'8 c8 bes8 a8 g8 a8 bes4 | c8 bes8 a8 g8 f8 g8 a4 | bes8 a8 g8 f8 e8 f8 g4 | a4 e4 f2\break
		d'2 d2( c2) c2 | d8 c8 bes8 a8 bes4 bes4 | a2 a2 \break
		d,8 d8 d8 d8 g8 g8 g4 | c,8 c8 c8 c8 f8 f8 f4 | bes,8 bes8 bes8 bes8 e8 e8 e4 | a,4 a4 d2 \bar "|."
	}
}

text = \lyricmode {
	Per	cru -- cem et pas -- si -- o -- nem tu -- am
	li -- be -- ra nos Do -- mi -- ne, li -- be -- ra nos Do -- mi -- ne, li -- be -- ra nos Do -- mi -- ne, Do -- mi -- ne.
	Per	cru -- cem et pas -- si -- o -- nem tu -- am
	li -- be -- ra nos Do -- mi -- ne, li -- be -- ra nos Do -- mi -- ne, li -- be -- ra nos Do -- mi -- ne, Do -- mi -- ne.
	Per sanc -- tam re -- sur -- rec -- ti -- o -- nem tu -- am
	li -- be -- ra nos Do -- mi -- ne, li -- be -- ra nos Do -- mi -- ne, li -- be -- ra nos Do -- mi -- ne, Do -- mi -- ne.
}

harmonies = \chordmode {
	d2:m g2:m c2 f2 bes2 g2:m a2:m d2:m
	d2:m g2:m c2 f2 bes2 g2:m a2:m d2:m
	d2:m g2:m c2 f2 bes2 g2:m a2:m d2:m
	d2:m g2:m c2 f2 bes2 g2:m a2:m d2:m
	d2:m g2:m c2 f2 bes2 g2:m a2:m d2:m
	d2:m g2:m c2 f2 bes2 g2:m a2:m d2:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
			\set ChordNames.midiInstrument = #"acoustic guitar (nylon)"
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \transpose c' c' { \first } }
			\addlyrics { \text }
		>>
	>>
}
