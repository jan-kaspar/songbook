\version "2.14.2"

FirstVoice = {
  	\tempo 8 = 160
	\clef treble
	\key d\major
	\time 6/8
	\relative c'' {
	  d8( cis8) b8 a4( fis8) | b4 b8 a4. | fis8 b8 b8 a4( fis8) | g4 g8 fis4.
	}
}

texti = \lyricmode {
	\set stanza = #"R. "
	Dans la joie nous ir -- ons à la mai -- son du Sei -- gneur.
}


harmonies = \chordmode {
  b4.:m d4. g4. d4.
  b4.:m d4. g4. d4.
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
		>>
	>>
}
