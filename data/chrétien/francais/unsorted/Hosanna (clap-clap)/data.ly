\version "2.14.2"

%%number=133

first = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 4=100
	\relative c'' {
		\partial 8 g8 | g4.( d8) d4 r8 g8 | a4.( d,8) d4 r8 a'8 |
		b8 a8 g8 fis8 g4 b4 | a2 r4. g8 | g4.( d8) d4 r8 g8 | a4.( d,8) d4 r8 a'8 | b8 a8 g8 fis8 g4 b4 | a2 r2 \bar "||" \break
		r4 c8 c8 c8 b8 a8 b8 ~ | b2 r2 |
		r4 c8 c8 c8 b8 a8 b8 ~ | b2 r2 |
		r4 c8 c8 c8 b8 a4 | b4 a4 g4 r8 b8 | c8 b8 a8 g8 a4. g8 | g2 r2 \bar "|."
	}
}


text = \lyricmode {
  	\set stanza = #"1. "
	Ho -- sa -- na, ho -- sa -- na, ho -- sa -- na Bo -- hu na ne -- bi.
	Ho -- sa -- na, ho -- sa -- na, ho -- sa -- na Bo -- hu na ne -- bi.
  	
	\set stanza = #"R: "
	Jmé -- no sla -- ví -- me tvé,
		%ha -- le -- lu -- ja
	chvá -- lí Tě srd -- ce mé
		%ha -- le -- lu -- ja
	Vy -- vý -- šen buď ó Bo -- že náš,
	ho -- sa -- na Bo -- hu na ne -- bi.
}

textF = \lyricmode {
  	\set stanza = #"1. "
	Ho -- san -- na, Ho -- san -- na, Ho -- san -- na au plus haut des cieux!
	Ho -- san -- na, Ho -- san -- na, Ho -- san -- na au plus haut des cieux!

	\set stanza = #"R: "
	Le ciel et la ter -- re sont rem -- plis de ta Gloire!
	Saint est le Seig -- neur not -- re Dieu; Ho -- san -- na au plus haut des cieux!
}

harmonies = \chordmode {
	s8 g1 d1 e2:m c2 d1 g1 d1 e2:m c2 d1
	c2 d2:7 g1 c2 d2:7 g1 c2 d2:7 g4 d4 e2:m c2 d2:7 g1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \text }
			\addlyrics { \textF }
		>>
	>>
}

TextBelow = \markup{}
