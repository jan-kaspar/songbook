\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 80
	\clef treble
	\key f\major
	\time 3/4
	\relative c' {
	  	\repeat volta 2 {
			d8 fis8 a4 c4 | bes8 a8 g4 a4 | fis4 d2
		}
		\break
		\repeat volta 2 {
			fis8 fis8 d4 g4 | fis8 fis8 d4 g4 | g8 g8 a4 g4 | fis4 d4 r4
		}
	}
}

SecondVoice = {
	\relative c' {
		d8 fis8 fis4 a4 | g8 fis8 e4 fis4 | d4 d2
		d8 d8 d4 d4 | d8 d8 d4 d4 | e8 e8 e4 e4 | d4 d4 s4
	}
}

ThirdVoice = {
	\key f\major
	\clef bass
	\relative c {
		d4 d4 d8 d8 | d4 d4 d8 d8 | d4 d4 d4 |
		d8 d8 d8( c8) bes4 | d8 d8 d8( c8) bes4 | c4 cis4 cis4 | d4 d4 d4
	}
}

texti = \lyricmode {
  	\set stanza = #"1. "
	By -- la ces -- ta, by -- la u -- šla -- pa -- ná,
	kdo ju šla -- pal, kdo ju šla -- pal? Mat -- ka Kris -- ta Pá -- na.
}

textii = \lyricmode {
  	\set stanza = #"2. "
	Po -- střet -- la ju tam sva -- tá Alž -- bě -- ta,
	kam ty krá -- číš, kam ty krá -- číš, ses -- tři -- čko má mi -- lá?
}

textiii = \lyricmode {
  	\set stanza = #"3. "
	Krá -- čím, ses -- tro, krá -- čím do kos -- te -- la,
	po -- slú -- chať mše, po -- slú -- chať mše, sva -- té -- ho neš -- po -- ra.
}

textiv = \lyricmode {
  	\set stanza = #"4. "
	Ne -- choď, ses -- tro, ne -- choď do kos -- te -- la,
	po -- ví -- da -- jú, po -- ví -- da -- jú, že po -- ro -- díš sy -- na.
}

textv = \lyricmode {
  	\set stanza = #"5. "
	Máš ho zro -- dit na ty slav -- né ho -- dy,
	když za -- mrz -- nú, když za -- mrz -- nú ve stu -- dén -- kách vo -- dy.
}

textvi = \lyricmode {
  	\set stanza = #"6. "
	A co by to za no -- vi -- na by -- la,
	kdy -- by pan -- na, kdy -- by pan -- na sy -- na po -- ro -- di -- la.
}

textvii = \lyricmode {
  	\set stanza = #"7. "
	Po -- ro -- di -- la "v ty" vá -- noč -- ní ho -- dy,
	co za -- mrz -- ly, co za -- mrz -- ly všec -- ky vša -- dy vo -- dy.
}

textviii = \lyricmode {
  	\set stanza = #"8. "
	E -- nem jed -- na vo -- da ne -- za -- mrz -- la,
	kde Ma -- ri -- a, kde Ma -- ri -- a pro vo -- du cho -- di -- la,
}

textix = \lyricmode {
	"" "" "" "" "" "" "" "" "" ""
  	by Je -- žíš -- ku, by Je -- žíš -- ku kú -- pel u -- dě -- la -- la.
}

harmonies = \chordmode {
	d2. g2:m d4 s2.
	d2 g4:m d2 g4:m c4 a2:7 d2.
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"violin"
  			\new Voice = "FirstVoice"
    			{ \transpose c' c' { \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
			\addlyrics { \textiv }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice= "SecondVoice"
    			{ \transpose c' c' { \SecondVoice } }
			\addlyrics { \textv }
			\addlyrics { \textvi }
			\addlyrics { \textvii }
			\addlyrics { \textviii }
			\addlyrics { \textix }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \transpose c' c' { \ThirdVoice } }
		>>
	>>
}

TextBelow = \markup{}
