\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 65 % TODO
	\clef treble
	\key es\major
	\time 3/4
	\relative c' {
	  es8 f g f g as | bes4 r8 es,8 es es | c'4 bes4 as4 | bes2. \bar "|."
	}
}

texti = \lyricmode {
	\set stanza = #"R. "
	Le Sei -- gneur est mon ber -- ger: rien ne sau -- rait me man -- quer.
}


harmonies = \chordmode {
  es2 c4:m bes4 as4 es4 as4 g4:m bes:7 es2.
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose es d { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix 1"
		  	%\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose es d { \FirstVoice } }
			\addlyrics { \texti }
		>>
	>>
}
