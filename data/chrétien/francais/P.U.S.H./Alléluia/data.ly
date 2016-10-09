\version "2.14.2"

first = {
	\clef treble
	\key e\major
	\time 6/8
	\tempo 4=80
	\relative c'' {
		cis4 b8 cis8( dis8) e8 | cis4 cis8 cis8( gis8) gis8 | gis4. r8 fis8 e8 | fis2. \break
		cis'4 b8 cis8( dis8) e8 | cis4 cis8 cis8( gis8) gis8 | gis4. a4 gis8 ~ | gis8 fis4 ~ fis4.
		\break
		\repeat volta 2 {
			fis4. ~ fis8 gis8 a8 | gis2 fis8 gis8 | a4. a8 gis8 fis8 | fis2. | fis2 gis8 a8 | gis2 r8 gis8 | a4. a8 gis8 fis8 | gis4.( a4.)
		}
	}
}


text = \lyricmode {
	Al -- lé -- lu -- ia, al -- lé -- lu -- ia, al -- lé -- lu -- ia
	Al -- lé -- lu -- ia, al -- lé -- lu -- ia, al -- lé -- lu -- ia

	Viens Saint Es -- prit dans le cœur de tes fi -- dèles!
	Qu’ils soient brû -- lés au feu de ton a -- mour.
	Viens Saint Es -- prit dans le cœur de tes fi -- dèles!
	Qu’ils soient brû -- lés au feu de ton a -- mour.
}

harmonies = \chordmode {
  	cis2.:m a2. e2. b2.
  	cis2.:m a2. e2. b2.
	fis2.:m gis2.:m a2. b2. fis2.:m gis2.:m a2. b2.
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
