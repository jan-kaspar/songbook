\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 70
	\clef treble
	\key d\major
	\time 4/4
	\relative c' {
		r2 r8. d16 fis8 a16 a16 ~
		\repeat volta 2 {
			a4 fis8 a16 a16 ~ a4 r16 fis8 a16 | d4. fis,8 a4 r8 a16 a16 |
			a8. g16 ~ g8 a8 a8. d,16 ~ d8 d16 d16 | d4 g8 fis16 fis16 ~ fis16 e8 d16 fis8 a16 a16
		}
	}
}

SecondVoice = {
	\clef treble
	\key d\major
	\time 4/4
	\relative c'' {
		\repeat volta 2 {
			s1 | d2 cis2 | b2 a2 | g2 fis2 | g2 a2
		}
	}
}

violin = {
}

texti = \lyricmode {
	Je bé -- ni -- rai le Sei -- gneur, en tous temps, tous lieux.
	Sa lou -- an -- ge sans ces -- se, à mes lèvres, oui je chan -- te.
	Je bé -- ni -- rai
}

harmonies = \chordmode {
	s1
	d2 a2/cis b2:m fis2:m/a g2 d2/fis g2 a2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"voix"
		  	\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix"
		  	\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.6
  			\new Voice = "SecondVoice" { \transpose c c { \SecondVoice } }
		>>

	>>
}
