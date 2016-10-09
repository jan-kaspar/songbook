\version "2.14.2"

FirstVoice = {
  	\tempo 2 = 100
	\clef treble
	\key d\major
	\time 4/4
	\relative c' {
		a4 fis'4 e4 d4 | a2 r2 | a4 fis'4 e4 d4 | b2 r2 | b4 g'4 fis4 e4 | a4 a4 a2 |
		  { a4 g4 fis4 e4 | d2 r2 }
		\break
		a4 fis'4 e4 d4 | a2 r2 | a4 fis'4 e4 d4 | b2 r2 | b4 g'4 fis4 e4 | a4 a4 a2 |
		  { b4 a4 g4 e4 | d2 r2}
		\break
		fis4 fis4 fis4 r4 | fis4 fis4 fis4 r4 | fis4 a4 d,4 d4 | fis2 r2 | g4 g4 g4 r4 | g4 fis4 fis2 | fis4 e4 e4 fis4 | e2 r2
		fis4 fis4 fis4 r4 | fis4 fis4 fis4 r4 | fis4 a4 d,4 d4 | fis2 r2 | g4 g4 g4 g4 | g4 fis4 fis4 r4 | a4 g4 fis4 e4 | d2 r2
		\bar "|."
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Slá -- va, už je sníh, je -- dem na sa -- ních, klu -- ci kři -- čí, zvo -- nek zní, je -- nom tá -- ta ztich.
	Kou -- ká na sy -- na, u -- ši na -- pí -- ná. Co to sly -- ší v_rol -- ni -- čkách? Na co vzpo -- mí -- ná?
  	
	\set stanza = #"R. "
	Rol -- ni -- čky, rol -- ni -- čky, kdo pak vám dal hlas? Kaš -- pá -- rek ma -- li -- čký ne -- bo dě -- da Mráz?
	Rol -- ni -- čky, rol -- ni -- čky, co to zvo -- ní v_nich? Ma -- min -- či -- ny pís -- nič -- ky, Vá -- no -- ce a sníh.
}

harmonies = \chordmode {
	d1 s1 s2 fis2:7 g2 b2:7 e2:m g2:m d2 a2:dim
		{ e2:m a2:7 d1}
	d1 s1 s2 fis2:7 g2 b2:7 e2:m g2:m d2 a2:dim
		{ e2:m a2:7 d1}
	d1 s1 s2 g2 d1 g1 d1 e1 a1:7
	d1 s1 s2 g2 d1 g1 d1 e2:m a2:7 d1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
		>>
	>>
}
