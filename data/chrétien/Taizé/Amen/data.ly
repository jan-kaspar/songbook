\version "2.14.2"

%%number=362
%%page=Eucharistie

first = {
	\clef treble
	\key a\major
	\time 2/4
	\tempo 4 = 70
	\relative c' {
		fis4( gis4 a4. gis8)
		gis2
		fis4( gis4 a4. gis8)
		gis2
	}
}

second = {
	\relative c' {
		s2 s2 s2
		fis4 e4 fis4. e8
		e2
	}
}

third = {
	\clef bass
	\key a\major
	\relative c {
		s2 s2 s2
		fis4 b4 cis4. b8
		b2
	}
}

fourth = {
	\relative c {
		s2 s2 s2
		fis4 e4 d4. e8
		e2
	}
}

text = \lyricmode {
	A -- men!
	A -- men!
}

harmonies = \chordmode {
	s2 s2 s2
	fis4:m e4 d2 e2
}


FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \harmonies }
		\new Staff <<
  			\new Voice = "first"
    			{ \voiceOne \first }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo \second }
		>>
		\new Staff <<
  			\new Voice = "third"
    			{ \voiceOne \third }
  			\new Voice= "fourth"
    			{ \voiceTwo \fourth }
		>>
	>>
}

TextBelow = \markup{}
