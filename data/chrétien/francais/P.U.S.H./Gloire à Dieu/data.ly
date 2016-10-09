\version "2.14.2"

first = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 4=170
	\relative c' {
	  	\repeat volta 2 {
		 	r4 r8 fis8 ~ fis8 gis8 gis4
		 	r4 r8 fis8 ~ fis8 gis8 gis4
			r4 r8 gis8 \times 2/3 { cis4 b4 gis4 }
			fis2 r2
			r4 r8 gis8 cis4 b8 gis8 | fis4. e8 \times 2/3 { e4 fis4 gis4 } | e2 r2 | r1
		}
	}
}


text = \lyricmode {
  	\set stanza = #"R: "
	Gloire à Dieu, gloire à Dieu au plus haut des cieux.
	Et paix sur la terre aux hom -- mes qu'il aime.
}

harmonies = \chordmode {
  cis1:m a1 e1 fis2:m gis2:m
  cis1:m a1 e2 b2 s1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \text }
		>>
	>>
}
