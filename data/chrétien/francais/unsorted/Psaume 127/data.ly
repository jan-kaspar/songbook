\version "2.14.2"

FirstVoice = {
  	\tempo 8 = 160
	\clef treble
	\key g\major
	\time 6/8
	\relative c' {
	  d8 d d e g e | d8 d4 r8 g8 g8 | c4. a8 a8 a8 | b2. \bar "|."
	}
}

texti = \lyricmode {
	\set stanza = #"R. "
	Que le Sei -- gneur nous bé -- nis -- se tous les jours de no -- tre vie.
}


harmonies = \chordmode {
  g4. c4. | g2. | c4. d4. | g4.
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
			%\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>
	>>
}
