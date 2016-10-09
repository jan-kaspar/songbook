\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key g\major
	\time 12/8
	\relative c' {
		\repeat volta 2 {
			e4. fis4 g8 fis2. | e4 fis8 g4 e8 fis4 g8 a4 fis8 | b2. a2. |
			g4. ~ g4 g8 fis4. ~ fis4 d8 | e2. r2.
		}
		
		e4. fis4 g8 fis2. | e4 fis8 g4 e8 fis4 g8 a4 fis8 | b2. a2. |
		g4. ~ g4 g8 fis4. ~ fis4 d8 | e2. r2.
	}
}

SecondVoice = {
	\clef treble
	\key g\major
	\time 12/8
	\relative c'' {
%		e2. dis2. | e2. fis2.| r8 g g | r g g | r fis fis | r fis fis
%		| r e e | r e e | r d d | r d d | r e e r e e | r b b r b b
		g4. a4 b8 b2. | g4 a8 g4 e8 fis4 g8 fis4 d8 | g2. fis2. | e4. ~ e4 e8 fis4. ~ fis4 fis8 | g2. r2.
	}
}

ViolinVoice = {
	\clef treble
	\key g\major
	\time 12/8
	\relative c'' {
		e2. dis2. | e2. fis2.| r8 g g | r g g | r fis fis | r fis fis
		e2. d2. | r8 e e r8 e e r8 d d r8 d d
%		| r e e | r e e | r d d | r d d | r e e r e e | r b b r b b
	}
}

texti = \lyricmode {
	A -- gneau de Dieu
	qui en -- lè -- ve le pé -- ché du mon -- de,
	prends pi -- tié de nous!

	A -- gneau de Dieu
	qui en -- lè -- ve le pé -- ché du mon -- de,
	don -- ne nous la paix! 
}

textii = \lyricmode {
}

harmonies = \chordmode {
	e2.:m b2. e2.:m d2. g2. d2.
	e2.:m b2.:m e2.:m b2.:m

	e2.:m b2. e2.:m d2. g2. d2.
	e2.:m b2.:m a2. e2.:m
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
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 2"
		  	\set Staff.shortInstrumentName = #"voix 2"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.7
  			\new Voice = "SecondVoice" { \transpose c c { \SecondVoice } }
		>>

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix 1"
		  	%\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.5
  			\new Voice = "ViolinVoice" { \transpose c c { \ViolinVoice } }
		>>
	>>
}
