\version "2.14.2"

voice_i = {
  	\tempo 4 = 110 % TODO
	\clef treble
	\key c\major
	\time 4/4
	\relative c'' {
	  \partial 4 c4 |
	  c8 c8 c8 d4 e4. | f4 e d d8 d8 | d8  e4 f4. r4 |
	  b,4 b8 b8 b8 c4 d4 ~ | d8 c4 c8 c8 c8 d8 ~ | d8 e4. c4 c8 c8 |
	  c8 d4 e4. f4 | e4 d4 d8 d8 d8 e8 ~ | e8 f4. |

	}
}

text_i = \lyricmode {
}


harmonies = \chordmode {
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \voice_i } }
			\addlyrics { \text_i }
		>>
	>>
}
