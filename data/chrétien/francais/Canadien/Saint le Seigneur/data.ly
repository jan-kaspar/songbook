\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 130
	\clef treble
	\key c\major
	\time 4/4
	\relative c'' {
		a2 a4. a8 | a4. g8 g4 g8 a8 | b4. b8 a4 g4 | a4 a8 b8 c8( b8) a4 | \break
		a2 a4. a8 | a4. g8 g4 g8 a8 | b4. b8 a4 g4 | a2 r4. a8 |
		g2 g4 f4 | e2 e4 d8 e8 | g2 a4 b4 | c2 r4 c8 c8 | c2 a8 a8 b8 c8 | b2. r4 |
		\bar "|."
	}
}


texti = \lyricmode {
	Saint, saint est le Sei -- gneur. 
	Ét -- er -- nel est son A -- mour.
	Al -- le -- lu -- ia.
	Saint, saint est le Sei -- gneur. 
	Ét -- er -- nel est son A -- mour.

	\set stanza = #"1. "
	Le ciel et la te -- rre
	sont rem -- plis
	de ta gloire.
	Ho -- san -- na au plus haut des cieux.
}

textii = \lyricmode {
	"" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" ""
	\set stanza = #"2. "
	Bé -- ni soit ce -- lui
	qui vient au nom
	du Sei -- gneur.
	Ho -- san -- na au plus haut des cieux.
}

harmonies = \chordmode {
	a1.:m c2 g1 a2:m f4 g4 | a1.:m c2 g1 a1:m
	g1 c1 g1 a1:m f1 e1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix 1"
		  	%\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
		>>

	>>
}
