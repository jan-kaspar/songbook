\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key g\major
	\time 6/8
	\relative c' {
		\partial 8 d8 | g4 g8 g4 b8 | a4 a8 b4. | g8 fis8 e8 a4 a8 | d,8( e8) fis8 g4 r8
		\bar "|."
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	My tři krá -- lo -- vé jde -- me k_vám ště -- stí zdra -- ví vin -- šu -- jem vám.
}

harmonies = \chordmode {
	s8 g4. e4.:m a4:m d8:7 g4. c4. a4.:m d4.:7 g4.
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
