\version "2.14.2"


FirstVoice = {
  	\tempo 4 = 130
	\clef treble
	\key bes\major
	\time 4/4
	\relative c' {
		\partial 4 d4 | bes' bes a a | bes bes g2 | d4 d4 fis8 fis4. | \partial 2. g2. \break
		\partial 4 d4 | bes' bes a a | bes bes g2 | d4 d4 fis8 fis4. | g2. r4 \break
		g8 g4. ~ g2 | c8 c4. ~ c2 | d2 d4. c8 | d4 d4 c8( bes4.) | \break
		bes8( g8) g2. | bes8( g8) g2 fis4 | d4 d4 fis8 fis4. | \partial 2. g2. \bar "|."
	}
}

SecondVoice = {
	\key bes\major
	\relative c' {
		d4 | g4 g4 fis fis | d d d2 | d4 d4 c8 c4. | bes2.
		d4 | g4 g4 fis fis | d d d2 | d4 d4 c8 c4. | bes2. r4
		g'8 g4. ~ g2 | es8 es4. ~ es2 | d2 fis4. fis8 | d4 d4 g2 |
		d4 d2. | d4 d2 d4 | d4 d4 c8 c4. | bes2.
	}
}

ThirdVoice = {
	\clef bass
	\key bes\major
	\time 4/4
	\relative c' {
		g4 | g g c c | bes bes g2 | d'4 d4 a8 a4. | g2.
		g4 | g g c c | bes bes g2 | d'4 d4 a8 a4. | g2. r4
		g8 g4. ~ g2 | g8 g4. ~ g2 | c2 c4. a8 | c4 c4 d2
		bes4 bes2. | bes4 bes2 a4 | d4 d4 a8 a4. | g2.
	}
}

FourthVoice = {
	\clef bass
	\key bes\major
	\time 4/4
	\relative c {
		g4 | g g d' d | g, g g2 | d'4 d4 d8 d4. | g,2.
		g4 | g g d' d | g, g g2 | d'4 d4 d8 d4. | g,2. r4
		g8 g4. ~ g2 | c8 c4. ~ c2 | d2 d4. d8 | d4 d4 g2 |
		g4 g2. | g4 g2 d4 | d4 d4 d8 d4. | g,2.
	}
}


texti = \lyricmode {
	\set stanza = #"1. "
    When Is -- rael was in E -- gypt’s land, Let My peo -- ple go!
    Op -- pressed so hard they could not stand, Let My peo -- ple go!

	\set stanza = #"R: "
    Go down, Mo -- ses, Way down in E -- gypt’s land;
    Tell old Pha -- raoh To let My peo -- ple go!
}

textii = \lyricmode {
	\set stanza = #"2. "
	No more shall they in bond -- age toil, Let My peo -- ple go!
	Let them come out with E -- gypt’s spoil, Let My peo -- ple go!
}

textiii = \lyricmode {
	\set stanza = #"3. "
	Oh, let us all from bond -- age flee, Let My peo -- ple go!
	And let us all in Christ be free, Let My peo -- ple go!
}

textiv = \lyricmode {
	\set stanza = #"4. "
	You need not al -- ways weep and mourn, Let My peo -- ple go!
	And wear these slav -- ’ry chains for -- lorn, Let My peo -- ple go!
}

textv = \lyricmode {
	\set stanza = #"5. "
	Your foes shall not be -- fore you stand, Let My peo -- ple go!
	And you’ll pos -- sess fair Ca -- naan’s land, Let My pe -- ople go!
}

harmonies = \chordmode {
	s4
	g2:m d:7 g1:m d:7 g:m
	g2:m d:7 g1:m d:7 g:m
	g1:m c:m d:7 d2:7 g2:m
	g1:m g1:m d:7 g2.:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose bes bes { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \voiceOne \transpose bes bes { \FirstVoice } }
  			\new Voice = "SecondVoice" { \voiceTwo \transpose bes bes { \SecondVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
			\addlyrics { \textiv }
			\addlyrics { \textv }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "ThirdVoice" { \voiceOne \transpose bes bes { \ThirdVoice } }
  			\new Voice = "FourthVoice" { \voiceTwo \transpose bes bes { \FourthVoice } }
		>>


	>>
}
