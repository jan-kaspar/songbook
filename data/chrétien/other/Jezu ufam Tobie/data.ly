\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 70
	\clef treble
	\key f\major
	\time 4/4
	\relative c'' {
	  c2( bes8 a g f) | g2. g8 a8 | bes2( a8 g8 f8 a8) | g1
	}
}

SecondVoice = {
	\clef treble
	\key f\major
	\time 4/4
	\relative c' {
	  e2( d2) | e2 d4 d4 | g2 f2 | d1
	}
}

ThirdVoice = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c' {
	  g4.( a8 bes2) | c2 bes4 bes4 | bes2( a4 c4) | c2( b2)
	}
}

FourthVoice = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c {
	  c2 g'2 | c,2 g'4 g4 | es2 f2 | g1
	}
}

texti = \lyricmode {
	Je -- zu u -- fam To -- bie.
}

harmonies = \chordmode {
  c2 g2:m c2. g4:m dis2 f2 g1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"S"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"A"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "SecondVoice" { \transpose c c { \SecondVoice } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"T"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "ThirdVoice" { \transpose c c { \ThirdVoice } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"B"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FourthVoice" { \transpose c c { \FourthVoice } }
		>>
	>>
}
