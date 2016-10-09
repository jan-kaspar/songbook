\version "2.14.2"

voice_i = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 2 = 92
	\relative c' {
		\partial 4 b4^\markup{\italic couplet} | e2 e2 | r4 dis4 cis8 b4. | cis4 b8 b8 ~ b2 |
		r2 r4 b4 | e8 e8 r2 r4 | e4 fis gis e8 fis8 ~ | fis1 \break
		r2 r4 b,4 | e2 e2 | r4 dis4 cis8 b4. | cis4 b8 b8 ~ b2 |
		r2 r4 b4 | e2 e2 | e4 fis8 gis8 ~ gis4 e4 | fis1 \break

		r2 e8^\markup{\italic refrain} fis8 r4 | gis8 fis4. e8 dis4. | cis4 r4 cis4 gis4 | cis8 dis8 r4 e4 fis8 dis8 ~ | dis2 e4 fis | \break
		gis8 fis4. e8 dis8 r4 | cis2 cis4 gis4 | cis4 dis4 e8 fis4 dis8 ~ | dis2 e4 fis4 | \break
		gis4 fis e dis8 cis8 ~ | cis2 e4 fis4 | gis8 fis4. gis8 a4. |
		fis2 e4 fis4 | gis4 fis e dis8 cis8 ~ | cis2 e8 fis8 r4 | gis8 fis4. gis4 a8 fis8 ~ | fis2 e4 dis4 |
		e1 | r1 | r1 | r1 \bar "|."
	}
}

voice_ii = {

}

voice_iii = {
}


harmonies = \chordmode {
	s4 | e1 a1 b1 b1
	e1 a1 b1 b1
	e1 a1 b1 b1
	e1 a1 b1 b1

	cis1:m cis1:m a1 b1
	cis1:m cis1:m a1 b1
	cis1:m cis1:m e1 b1
	cis1:m cis1:m e1 b1
	a1 a1 e1 e1
}

text_i = \lyricmode {
	\set stanza = #"1."
	Je krás -- né být Bo -- žím dí -- tě -- tem
	a v_Bo -- hu své -- ho ot -- ce mít.
	On stá -- le ví -- tě -- zí nad svě -- tem
	a já smím v_je -- ho pé -- či žít.

	\set stanza = #"R:"
	A tak kaž -- dý no -- vý den zpí -- vám Bo -- hu chvá -- ly své,
	je -- mu pat -- ří ži -- vot můj, pláč i chv -- íle ra -- dost -- né,
	kde mi sí -- ly ne -- sta -- čí, tam svou mo -- cí po -- má -- há,
	k_ně -- mu vždy se o -- bra -- cím, vždyť jen on mé srd -- ce zná,
	srd -- ce zná.
}

text_ii = \lyricmode {
	\set stanza = #"2."
	Je krás -- né Je -- ží -- šem dát se vést
	a s_ním tak stou -- pat k_ne -- bi blíž.
	Je krá -- sné znát mat -- ku Ma -- ri -- i
	a u ní před zlem hle -- dat skrýš.
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 1"
		  	\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice { \voice_i }
			\addlyrics { \text_i }
			\addlyrics { \text_ii }
		>>

	>>
}
