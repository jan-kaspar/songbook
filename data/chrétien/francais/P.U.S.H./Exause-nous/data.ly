\version "2.14.2"

%%number=133

first = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 4=124
	\relative c' {
		\partial 8 cis8
		gis'4 fis8 gis8 ~ gis8 a8 b8 b8 ~ | b2. r8 b8 | a2 gis2 | e2. r8 cis8
		gis'4 fis8 gis8 ~ gis8 a8 b8 b8 ~ | b2. r8 b8 | a2 gis2 | e1
		\bar "|."
	}
}


text = \lyricmode {
	Sei -- gneur en -- voie ton Es -- prit, ex -- au -- ce -- nous.
	Sei -- gneur en -- voie ton Es -- prit, ex -- au -- ce -- nous.
}

harmonies = \chordmode {
  s8
  cis1:m b1 a2 b2 e1
  cis1:m b1 a2 b2 e1
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
