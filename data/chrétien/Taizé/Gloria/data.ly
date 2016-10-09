\version "2.14.2"

%%number=25

first = {
	\clef treble
	\key f\major
	\time 6/8
	\tempo 4.=80
	\relative c'' {
		a8(^\markup{\circle{1}} g8) a8 bes4. | g8( f) g8 a4. \bar "||"
		d,4^\markup{\circle{2}} d8 g8( a8) bes8 | c4. a4. \bar "||"
		a8(^\markup{\circle{3}} d8) c8 bes4. | g8( c8) bes8 a4. \bar "||"
		f8^\markup{\circle{4}} e8 f8 g4. | e8 d8 e8 f4. \bar "|."
	}
}


text = \lyricmode {
	Glo -- ri -- a, glo -- ri -- a, in ex -- cel -- sis De -- o!
	Glo -- ri -- a, glo -- ri -- a, al -- le -- lu -- ia, al -- le -- lu -- ia!
}

harmonies = \chordmode {
	d4.:m g4.:m c4. f4.
	d4.:m g4.:m c4. f4.
	d4.:m g4.:m c4. f4.
	d4.:m g4.:m c4. f4.
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

\score {
	\FullLayout
	\layout { }
	\midi { }
}

%----------------------------------------------------------------------------------------------------

first = {
	\clef treble
	\key f\major
	\relative c'' {
		\override Staff.Stem #'transparent = ##t
		a\longa a4 g4 a4 bes1 \break
		bes\longa g4 c4 bes4 a1 \break
		f\longa f4 e4 f4 g1 \break
		g\longa e1 e4 d4 e4 f1
	}
}

texti = \lyricmode {
	\set stanza = #"1. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Et Paix sur la terre" aux_hom -- mes qu'Il aime.
	\set stanza = #"1. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Nous te louons, nous te bénissons," nous T'a -- do -- rons,
	\set stanza = #"1. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"nous te glorifions, nous te rendons grâce, pour ton" i -- mmen -- se gloire,
	\set stanza = #"1. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Seigneur Dieu, Roi du" "ciel, Dieu le" Père tout pui -- ssant.
}

textii = \lyricmode {
	\set stanza = #"2. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Seigneur, Fils unique, Jésus Christ. Seigneur Dieu, Agneau de Dieu," le Fils du Père;
	\set stanza = #"2. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Toi qui enlèves le péché du monde," "prends pi" -- tié de nous.
	\set stanza = #"2. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Toi qui enlèves le péché du monde," "reçois no" -- tre pri -- ère;
	\set stanza = #"2. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Toi qui es assis à la droite du" Père, "prends pi" -- tié de nous;
}

textiii = \lyricmode {
	\set stanza = #"3. "
	"" Car_Toi seul es Saint.
	\set stanza = #"3. "
	"" "Toi seul es" le Sei -- gneur.
	\set stanza = #"3. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"Toi seul es le Très-Haut : Jésus Christ," "avec le" Saint Es -- prit,
	\set stanza = #"3. "
	\once \override LyricText #'self-alignment-X = #LEFT
	"dans la gloire de Dieu le" "Père," A -- a -- a -- men.
}

FullLayout = {
	\new ChoirStaff <<
		\new Staff \with { \remove Bar_engraver } <<
  			\new Voice = "first"
    			{ \first }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
		>>
	>>
}
