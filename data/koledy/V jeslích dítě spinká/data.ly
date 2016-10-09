\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 90
	\clef treble

	\key e\major
	\time 4/4

	\relative c' {
		e8 e8 e8 e8 fis8 gis4. | e2 b2 | e8 e e e fis8 gis4. | e4 cis4 b2 |
		e8 e8 e8 e8 fis8 gis4. | cis2 b4. b8 | b8 cis b cis gis gis e e | gis8 fis4. e2 
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	V_je -- slích dí -- tě spin -- ká, zpí -- vej,
	v_je -- slích dí -- tě spin -- ká, zpí -- vej dál,
	v_je -- slích dí -- tě spin -- ká, zpí -- vej,
	když blud -- ná hvěz -- da zá -- ří, ti -- še pa -- dá sníh.
}

harmonies = \chordmode {
	e2 a2:6 | e2 a2:9 | e2 a2:6 | e4 e4:dim fis4:m7 b4:7 |
	e2 e2:7 | a2 e2 | cis2:m7 fis2:7 | b2:7 e2 |
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
		>>
	>>
}
