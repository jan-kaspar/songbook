\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 120
	\clef treble
	\key d\major
	\time 3/4
	\relative c'' {
		a4( fis4) a4 | g4( e4) g4 | fis4( d4) a'8( fis8) | fis4 e2
		a4( fis4) a4 | g4( e4) g4 | fis4( d4) a'8( fis8) | fis4 e2
		\break
		\repeat volta 2 {
			d2 fis4 | e2 g4 | fis4( d4) b'4 | a2 r4 |
			a4( fis4) a4 | g4( e4) g4 | fis2 e4 | d2.
		}
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Slyš -- te, slyš -- te, pas -- tuš -- ko -- vé,
	ja -- ké zně -- jí zpě -- vy no -- vé,
	v_té -- to noč -- ní ho -- di -- ně
	u bet -- lém -- ské jes -- ky -- ně.
}

harmonies = \chordmode {
	d2. a2. d2. a2. | 
	d2. a2. d2. a2. |
	d2. a2. d2 g4 a2. |
	d2. e2.:m d2 a4:7 d2.
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
		>>
	>>
}
