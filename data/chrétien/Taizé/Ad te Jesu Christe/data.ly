\version "2.14.2"

%%number=133

first = {
	\clef treble
	\key c\major
	\time 4/4
	\tempo 4=100
	\relative c'' {
		\partial 4 b4
		\repeat volta 2 {
			c2^\markup{\circle{1}} a4 c4
			b4( g4) e4 e4
			a4^\markup{\circle{2}} e4 c8 c8 a4
			e'2 e2
			c4 e2 e4
			g4( e4) e4 e4
			a2 a2
			b2 b4 b4
	  }
	}
}


text = \lyricmode {
	Ad te Je -- su Chris -- te le -- va -- vi a -- ni -- mam me -- am.
	Sal -- va -- tor mun -- di, in te spe -- ra -- vi. Ad
}

harmonies = \chordmode {
	s4 | a1:m e1:m a1:m e1:m a1:m e1:m a1:m e1:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \text }
		>>
	>>
}

TextBelow = \markup{}
