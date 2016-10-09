\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 120
	\clef treble
	\key f\major
	\time 4/4
	\relative c' {
		\partial 2 r8^\markup{\italic refrain} a8 d8 f8 | a2 f4 f8 e8 | d2 r8 d8 f8 a8 | d2 bes4 bes8 a8 | g2 r8 g8 a8 bes8 |
		a4( e4) a4 a8 g8 | f2 r8 f8 e8 d8 | a'4 a a a | a8 g8 f8 e8 d2 \break

		\partial 2 r8^\markup{\italic couplet} a8 d8 f8 | a2 f4. e8 | d2 r8 d8 f8 a8 | d2 bes4. a8 | g2 r8 g8 a8 bes8 |
		a4( e4) a4. g8 | f2 r8 f8 e8 d8 | a'4 a a a | \time 2/4 a a | \time 4/4 a8 g8 f8 e8 d2 \bar "|."
	}
}

SecondVoice = {
	\clef treble
	\key f\major
	\time 4/4
	\relative c'' {
		s8 f8 f f | f2 d4 d8 c8 | d2 r8 f8 f f | f2 d4 d8 c8 | d2 r8 e8 e8 e8 |
		e4 d4 e4 e8 e8 | f2 r8 f8 f f | e4 e e e | e8 e f e d2

		s8 f8 f f | f2 d4. c8 | d2 r8 f8 f f | f2 d4. c8 | d2 r8 e8 e8 e8 |
		e4 d4 e4. e8 | f2 r8 f8 f f | e4 e e e | e e | e8 e f e d2
	}
}

VocalTwo = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c {
		s2 | d1 | d2. c4 | bes1 | bes2. d4 | cis1 |
		d2. bes4 | a1 | a4 cis4 d2

		s2 | d1 | d2. c4 | bes1 | bes2. d4 | cis1 |
		d2. bes4 | a1 | a2 | a4 cis4 d2
	}
}

texti = \lyricmode {
	\set stanza = #"R. "
	E -- ve -- nou sha -- lom a -- lei -- cheim!
	E -- ve -- nou sha -- lom a -- lei -- cheim!
	E -- ve -- nou sha -- lom a -- lei -- cheim!
	E -- ve -- nou sha -- lom sha -- lom sha -- lom a -- lei -- cheim!

	\set stanza = #"1. "
	Nous vous an -- non -- çons la paix. 
	Nous vous an -- non -- çons la paix. 
	Nous vous an -- non -- çons la paix. 
	Nous vous an -- non -- çons la paix, la paix, la paix de Jé -- sus! 
}


harmonies = \chordmode {
	s2   d1:m d1:m bes1 bes1 a1 d1:m a1 a2 d2:m
	d2:m d1:m d1:m bes1 bes1 a1 d1:m a1 a2 a2 d2:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 1"
		  	\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 2"
		  	\set Staff.shortInstrumentName = #"voix 2"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.5
  			\new Voice = "SecondVoice" { \transpose c c { \SecondVoice } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"vocal"
		  	\set Staff.shortInstrumentName = #"vocal"
		  	\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.7
  			%\new Voice = "SecondVoice"
    		%	{ \transpose c' c' { \voiceTwo \VocalOne } }
  			\new Voice = "SecondVoice"
    			{ \transpose c' c' { \voiceOne \VocalTwo } }
		>>
	>>
}
