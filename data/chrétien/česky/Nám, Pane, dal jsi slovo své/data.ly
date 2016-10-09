\version "2.14.2"

voice_i = {
	\clef treble
	\key d\major
	\time 4/4
	\tempo 4 = 120
	\relative c' {
		\partial 4 a4^\markup{\italic refrain} | fis'4 fis fis fis | fis8 e4 d4. r4 | d8 d8 d8 d8 e8 e4. | \partial 2. fis2 r4 \break
		\partial 4 a,4 | fis'4 fis fis fis | fis4 e8 d4. r4 | d8 d8 d8 d8 e8 e4. | \partial 2. d2 r4 \break

		\partial 4 d8^\markup{\italic couplet} d8 | fis a fis e fis a fis e | fis8 e4 d4. r4 |
		d8 d8 d8 d8 e8 e4. | \partial 2. fis2 r4 \break
		\partial 4 d8 d8 | fis a fis e fis a fis e | fis8 e4 d4. r4 |
		d8 d8 d8 d8 e8 e4. | \partial 2. d2 r4 \bar "|."
	}
}

voice_ii = {
	\clef treble
	\key d\major
	\time 4/4
	\relative c'' {
		a4 | a a a a | a8 g4 fis4. r4 | g8 g g g a8 a4. | fis2 r4
		a4 | a a a a | a4 g8 fis4. r4 | g8 g g g a8 a4. | fis2 r4
		r4 | r1 | r1 | g8 g g g a8 a4. | fis2 r4
		r4 | r1 | r1 | g8 g g g a8 a4. | fis2 r4
	}

}

voice_iii = {
	\relative c' {
		d4 | d d d d | d8 d4 d4. s4 | g,8 g g g a8 a4. | d2 s4
		d4 | d d d d | d4 d8 d4. s4 | g,8 g g g a8 a4. | d2 s4
		s4 | s1 | s1 | g,8 g g g a8 a4. | d2 s4
		s4 | s1 | s1 | g,8 g g g a8 a4. | d2 s4
	}
}


harmonies = \chordmode {
	s4 | d1 d1 g2 a2 d1
	d1 d1 g2 a2 d1
	d1 d1 g2 a2 d1
	d1 d1 g2 a2 d1
}

text_i = \lyricmode {
	\set stanza = #"R:"
	Nám, Pa -- ne, dal jsi Slo -- vo své,
	Du -- cha své -- ho dej nám též.
	Ať te -- be vždy -- cky přij -- me -- me,
    Du -- cha své -- ho dej nám též.

	\set stanza = #"1."
	Zůs -- taň, Pa -- ne, s_ná -- mi všech -- ny dny až na vě -- ky,
	Du -- cha své -- ho dej nám též.
	Ty jsi ces -- ta, ty jsi ži -- vot pro nás, pro bra -- try,
	Du -- cha své -- ho dej nám též.


}

text_ii = \lyricmode {
	"" 
	"" "" "" "" | "" "" "" "" | "" "" "" "" | "" "" "" "" 
	"" "" "" "" | "" "" "" "" | "" "" "" "" | ""

	\set stanza = #"2."
	Vše -- chny mo -- ci svě -- ta, když nás, Pa -- ne, tý -- ra -- jí,
	Du -- cha své -- ho dej nám též.
	Ve ví -- ře nás pře -- ce Bo -- ží sí -- la pro -- vá -- zí,
	Du -- cha své -- ho dej nám též.
}


text_iii = \lyricmode {
	"" 
	"" "" "" "" | "" "" "" "" | "" "" "" "" | "" "" "" "" 
	"" "" "" "" | "" "" "" "" | "" "" "" "" | ""

	\set stanza = #"3."
	Stá -- le zno -- vu zpí -- vám: Pa -- ne, dej nám Du -- cha též,
	Du -- cha své -- ho dej nám též.
	Kte -- rý sr -- dce, my -- sl zar -- mou -- ce -- nou poz -- dvih -- ne,
	Du -- cha své -- ho dej nám též.
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
			\addlyrics { \text_iii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 2, 3"
		  	\set Staff.shortInstrumentName = #"voix 2, 3"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.8
  			\new Voice { \voiceOne \voice_ii }
  			\new Voice { \voiceTwo \voice_iii }
		>>

	>>
}
