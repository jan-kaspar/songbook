\version "2.14.2"

%%number=72

first = {
	\clef treble
	\key as\major
	\time 3/4
	\tempo 4 = 80
	\relative c' {
		\partial 2 f8 as8 as8( g8) 
		as2 c8 c8
		bes4 as4 des8 c8
		bes4 as4 f8 as8
		as8( g8) as2
		c8 c8 bes8( as8) bes4
	}
}

second = {
	\relative c'' {
		s2
		s2 as8 as8
		g4 f4 as8 as8
		g4 f4 f8 f8
		es4 es2
	}
}

third = {
	\clef bass
	\key as\major
	\time 3/4
	\relative c' {
		s2
		s2 es8 es8
		es4 c4 f8 es8
		es4 c4 des8 c8
		bes4 c2
		s2 s4
	}
}

fourth = {
	\key as\major
	\relative c' {
		s2
		s2 as8 as8
		es4 f4 des8 as'8
		es4 f4 des8 des8
		es4 as,2
		s2 s4
	}
}

text = \lyricmode {
	Al -- le -- lu -- ia
	Al -- le -- lu -- ia,
	al -- le -- lu -- ia,
	al -- le -- lu -- ia!
	Al -- le -- lu -- ia!
}

harmonies = \chordmode {
	c4 d4 g2 s4 d4 e4:m c4 d4 e4:m c4 d4 g2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
  			\new Voice = "first"
    			{ \voiceOne \transpose c' b { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo \transpose c' b { \second } }
		>>
		\new Staff <<
  			\new Voice = "third"
    			{ \voiceOne \transpose c' b { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' b { \fourth } }
		>>
	>>
}
