\version "2.14.2"

first = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 4=60
	\relative c' {
		\repeat volta 2 {
			e8 fis16 gis16 ~ gis16 e16 cis8 b2
			cis8 dis16 e16 ~ e16 cis16 cis8 b2
			cis8 cis16 cis16 ~ cis16 dis16 e8 dis4( e8.) a,16
			a'8 fis16 fis16 ~ fis16 e16 e16 fis16 fis2
		}
	}
}

violin = {
	\clef treble
	\key e\major
	\time 4/4
	\relative c'' {
		\repeat volta 2 {
			b2 b4 dis16 b16 fis16 b16 |
			cis2 b4 e16 b16 gis16 b16 |
			a2 dis8 b8 cis4 | cis2 b4r16 dis,16 fis16 b16
		}
	}
}


text = \lyricmode {
	Viens Es -- prit de Dieu, viens.
	Viens Es -- prit de feu, viens.
	Viens Es -- prit d'a -- mour, viens.
	Le monde a tant be -- soin de toi.
}

harmonies = \chordmode {
	e2 b2 a2 e2
	a2 b4 cis4:m fis2:m b2
}

\paper{
	indent = 1\cm
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
		\new Staff <<
			\set Staff.midiInstrument = #"violin"
			\set Staff.instrumentName = #"violin"
  			\new Voice = "violin"
    			{ \violin }
		>>
	>>
}
