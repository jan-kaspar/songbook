\version "2.12.3"

melody = {
	\key e\major
	\partial 16 b16
	\repeat volta 2 {
		e'8 dis'16 e' ~ e' dis'8 e'16 ~ e'4 r8 cis'16 dis'
		e'8 dis'16 e' ~ e' dis'8 b16 ~ b2 
		cis'8. dis'16 ~  dis'16 e'8 e'16 ~ e'4 fis'8 gis'8
		gis'8. fis'16 ~ fis' e'8 dis'16 ~ dis'2
	}
}

text = \lyricmode {
	Sei -- gneur tu é -- tais mort, mais tu es res -- su -- sci -- té.
	Nous at -- ten -- dons ta ve -- nue dans la gloire.
}

harmonies = \chordmode {
	s16 cis2:m a e b cis:m a e b
}

FullLayout = {
	<<
		\new ChordNames { \harmonies }
		\new Voice = "main" { \melody }
		\new Lyrics \lyricsto "main" { \text }
	>>
}
