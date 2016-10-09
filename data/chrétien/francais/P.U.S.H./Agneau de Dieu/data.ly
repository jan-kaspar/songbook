\version "2.14.2"

first = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 4=56
	\relative c' {
		\repeat volta 2 {
			e8 dis e b' gis fis fis b, | e dis e fis gis4 fis4 |
			e8 b' gis fis fis2 | a8 gis fis e e2 | e8 b' gis fis fis2 | a8 gis fis e e2 |
		}
		
		e8 dis e b' gis fis fis b, | e dis e fis gis4 fis4 |
		e8 b' gis fis fis2 | a8 gis fis e e2 | e8 b' gis fis fis2 | a8 gis fis e e2 ~ | e2 \bar "|."
	}
}

text = \lyricmode {
	\set stanza = #"1., 2."
	A -- gneau de Dieu qui en -- lè -- ves le pé -- ché du mon -- de,
	prends pi -- tié de nous, prends pi -- tié de nous,
	prends pi -- tié de nous, prends pi -- tié de nous.

	\set stanza = #"3."
	A -- gneau de Dieu qui en -- lè -- ves le pé -- ché du mon -- de,
	don -- ne- nous la paix, don -- ne- nous la paix,
	don -- ne- nous la paix, don -- ne- nous la paix
}

harmonies = \chordmode {
	e4 fis4:m gis2:m | a2 e4 b4 | cis2:m b2 | a4 b4 e2 | cis2:m b2 | a4 b4 e2 |
	e4 fis4:m gis2:m | a2 e4 b4 | cis2:m b2 | a4 b4 e2 | cis2:m b2 | a4 b4 d2:2 | e2
}

FullLayout = {
	<<
		\new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}
			{ \transpose c' c' { \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"piano"
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \text }
		>>
	>>
}
