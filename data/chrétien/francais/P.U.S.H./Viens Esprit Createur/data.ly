\version "2.14.2"





first = {
	\clef treble
	\key as\major
	\time 6/8
	\tempo 4=91
	\relative c'' {
		as4 g8 as4 g8 | as4 g8 as4 bes8 | c4 g8 g4 f8 | g2.
		f4 es8 f4 es8 | f2 f8 g8 | as4 es8 es4 c8 | es2.
		as4 g8 as4 g8 | as4 g8 as4 bes8 | c4 g8 g4 f8 | g4. f8 f8 g8 |
		as8 g8 f4 f8 f8 | as8 g8 f8( f4) g8 | as4 g8 f4 g8 | g2.

		\break
		c4 c8 c8 bes8 as16 as16( | as2.) | f8 g8 as8 as4. | as8 g8 f8 f4.( |
		f4) es8 as8 as8 g8 | as4 bes8 g4.( | g4) es8 as4 as8 | as8 g8 f8 f4.

		\bar "|."
	}
}


text = \lyricmode {
Toi le Père le Con -- seil -- ler, tu es le don du Ciel.
Tu bé -- nis nos vies, de ton a -- mour es -- sen -- tiel.
Toi la source de vé -- ri -- té in -- spi -- re nos pen -- sées.
Tu gui -- des nos pa -- roles et par ta pro -- messe,
tu nous fais a -- van -- cer.

Viens, Es -- prit Cré -- a -- teur, vi -- si -- te l'âme de tes fi -- dèles,        
Em -- plis de la grâce d'En -- Haut les coeurs que tu as cré --  -- és.
}

harmonies = \chordmode {
	as2. as2. c2.:m c2.:m des2. des2. as2. es2.
	as2. as2. c2.:m c2.:m des2. des2. as2. es2.

	f2.:m f2.:m f2.:m f4.:m es2.
	as2. c2.:m c2.:m f4.:m
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
