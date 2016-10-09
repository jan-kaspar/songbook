\version "2.14.2"

first = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 4=80
	\relative c' {
	  	\repeat volta 2 {
			\partial 8 b8
			e2 ~ e8 dis8 e8 cis8 ~ | cis2. r8 b8 | cis2 ~ cis8 e8 fis8 gis8 ~ | gis2. r8 e8 | a2 ~ a8 b8 cis8 b8 ~ | b2. r8 e,8
			fis2 ~ fis8 gis8 a8 gis8 ~ | gis1
	  }
	}
}


text = \lyricmode {
	Sei -- gneur prends pi -- tié mon coeur est trop lourd.
	En -- voie ton Es -- prit, j'at -- tends ton se -- cours.
}

harmonies = \chordmode {
  s8
  e1 a1 cis1:m s1 a1 gis1:m fis1:m e1/gis
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
