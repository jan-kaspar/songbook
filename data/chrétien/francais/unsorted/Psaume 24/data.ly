\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 65 % TODO
	\clef treble
	\key f\major
	\time 6/8
	\relative c' {
	  r8 f8 a8 c4. | c8 c c d d d | a4. a8 g a | c4 c8 b c b | \time 3/8 a4. \bar "|."
	}
}

texti = \lyricmode {
	\set stanza = #"R. "
	Au -- jour -- d’hui, ne fer -- mez pas vo -- tre cœur, mais é -- cou -- tez la voix du Sei -- gneur.
}


harmonies = \chordmode {
  f2. f4. g4. f2. a4.:m g4. f4.
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
