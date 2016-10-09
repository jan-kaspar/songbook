\version "2.14.2"

%%number=19

first = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 4=120
	\relative c'' {
		\repeat volta 2 {
			b4^\markup{\circle{1}} a8 g8 e2 | fis4 e8 fis8 g2 |
			d4^\markup{\circle{2}} d8 d8 e8 e8 fis8 g8 | a4 a4 g8 a8 b4 |
			b4^\markup{\circle{3}} a8 g8 e2 | c'4 b8 a8 g2 |
			d'4^\markup{\circle{4}} c8 b8 c8 b8 a8 g8 | fis2 g2
	  }
	}
}

second = {
	\clef treble
	\key g\major
	\time 4/4
	\relative c'' {
		g2 g2 | a2 b2 | d2 c4( b4) | a2 b2 |
		d4 d4 e8( d8) c8 b8 | a4 d4 b2 | b4 b4 c8( b8) a8 g8 | fis8( e8) fis4 g2
	}
}

text = \lyricmode {
	Ma -- gni -- fi -- cat, ma -- gni -- fi -- cat,
	ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num.
	Ma -- gni -- fi -- cat, ma -- gni -- fi -- cat,
	ma -- gni -- fi -- cat a -- ni -- ma me -- a!
}

texts = \lyricmode {
	Ma -- gni -- fi -- cat, ma -- gni -- fi -- cat,
	a -- ni -- ma me -- a Do -- mi -- num,
	a -- ni -- ma me -- a Do -- mi -- num.
}

harmonies = \chordmode {
	g2 c2 d2 g2
	g2 c2 d2 g2
	g2 c2 d2 g2
	g2 c2 d2 g2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
		  	\set Staff.midiInstrument = #"violin"
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \text }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "second"
    			{ \second }
			\addlyrics { \texts }
		>>
	>>
}

TextBelow = \markup{}
