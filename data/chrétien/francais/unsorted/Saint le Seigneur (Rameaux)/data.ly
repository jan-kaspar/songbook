\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key d\major
	\time 6/8
	\relative c' {
	  	d4. d8 fis8 g8 | a4. ~ a4 r8 | b4. b8 a8 g8 | a4. ~ a8 r8 a8 | b4. g4 fis8 | \break
		e4. ~ e4 e8 | a4. fis4 e8 | d2. | d'4. cis4( b8) | a2. | b4. d4( cis8) | d2. \bar "|."
	}
}

SecondVoice = {
	\clef treble
	\key d\major
	\time 6/8
	\relative c' {
	  d4. d8 d8 d8 | e4. ~ e4 r8 | d4. d8 d8 e8 | fis4. ~ fis8 r8 fis8 | g4. d4 d8 |
	  e4. ~ e4 e8 | cis4. d4 e8 | d2. | d8( e8 fis8) gis8( a8 gis8) | fis2. | e8( fis8 g8) fis4( a8) | a2. |
	}
}

ThirdVoice = {
	\clef bass
	\key d\major
	\time 6/8
	\relative c {
	  d4. d8 d8 d8 | cis4. ~ cis4 r8 | b4. g8 g8 b8 | d4. ~ d8 r8 d8 | d4. b4 d8 |
	  cis4. ~ cis4 cis8 | a4. b4 cis8 | d2. | b4. e4. | fis2. | g4( e8) a,4. | d2.
	}
}

texti = \lyricmode {
	%\set stanza = #"R. "
	Saint est le Sei -- gneur, Dieu de l’u -- ni -- vers!
	Bé -- ni soit ce -- lui qui vient nous sau -- ver!
	Ho -- san -- na!
	Ho -- san -- na!
}

harmonies = \chordmode {
  d2. a2. g2. d2. g2.
  a2. a2. d2. g2. d2. g4. d4 a8 d2.
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"vocal"
		  	%\set Staff.shortInstrumentName = #"vocal"
		  	%\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice"
    			{ \transpose c' c' { \voiceOne \FirstVoice } }
			\addlyrics { \texti }
  			\new Voice = "SecondVoice"
    			{ \transpose c' c' { \voiceTwo \SecondVoice } }
		>>

		\new Staff <<
		  	%\set Staff.instrumentName = #"vocal"
		  	%\set Staff.shortInstrumentName = #"vocal"
		  	%\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "ThirdVoice"
    			{ \transpose c' c' { \voiceOne \ThirdVoice } }
		>>
	>>
}
