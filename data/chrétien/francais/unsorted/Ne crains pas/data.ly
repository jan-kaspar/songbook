\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 90
	\clef treble
	\key f\major
	\time 4/4
	\relative c' {
		d4^\markup{\italic refrain} f8( e8) f4. g8 | a4 a g r8 g8 | f8 f8 e8 d8 f4 e8 d8 | c4 f8 f8 e2 |
		d4 f8 e8 f4 f8 g8 | a4 c8 c8 g4 g4 | f4 e4 d4 a'8 a8 | g4 f8 e8 d2 \bar "||" \break

		a'8^\markup{\italic contrechant 1} g8 f8 a8 bes4 bes8 bes8 | c4 a4 c2 | a4 g8 a8 f4 bes8 bes8 | a8( g8) f8 a8 g4 g4 |
		d8 e8 f8 a8 d4 bes8 bes8 | c1 | r2 bes8 bes8 a8 f8 | e8 g8 a8 g8 f2 \bar "||" \break

		r4^\markup{\italic contrechant 2} d'8 e8 f8 e8 d8 d8 | c4 a8 bes8 c4 c8 bes8 | a4 a8 d8 f8 d8 e8 d8 | c2. r8 c8 |
		d8 d8 a8 a8 bes4 bes4 | a8 a16 a16 bes8 c8 c2 | r2 d4 d4 | c4 a8 c8 d2  \bar "|."
	}
}

SecondVoice = {
	\clef treble
	\key f\major
	\time 4/4
	\relative c'' {
	}
}

ThirdVoice = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c'' {
	}
}

FourthVoice = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c {
		d4 d8( c8) bes4. bes8 | f'4 f4 c4 r8 c8 | d8 d8 d8 d8 bes4 bes8 bes8 | f'4 f8 f8 c2 |
		d4 d8 c8 bes4 bes8 g8 | f4 f'8 f8 c4 c4 | d4 d4 bes4 bes8 bes8 | c4 c8 c8 d2 |
	}
}


texti = \lyricmode {
	\set stanza = #"R. "
	Ne crains pas, je suis ton Dieu, 
	C'est moi qui t'ai choi -- si, ap -- pe -- lé par ton nom.
	Tu as du prix à mes yeux et je t'ai -- me.
	Ne crains pas car je suis a -- vec toi.

	\set stanza = #"1. "
	Toi mon ser -- vi -- teur, je te sou -- tien -- drai,
	Toi, mon é -- lu que pré -- fè -- re mon â -- me,
	Je met -- trai en toi mon Es -- prit,
	Je te com -- ble -- rai de mon Es -- prit.

	\set stanza = #"2. "
	Le Sei -- gneur m'a ap -- pe -- lé dès le sein de ma mère, 
	Il a pro -- non -- cé mon nom.
	C'est Lui qui m'a for -- mé pour ê -- tre son ser -- vi -- teur,
	Le té -- moin de sa Gloire!
}

harmonies = \chordmode {
  d2:m bes2 f2 c2
  d2:m bes2 f2 c2
  d2:m bes2 f2 c2
  d2:m bes2 c2 d2:m

  d2:m bes2 f2 c2
  d2:m bes2 f2 c2
  d2:m bes2 f2 c2
  d2:m bes2 c2 d2:m

  d2:m bes2 f2 c2
  d2:m bes2 f2 c2
  d2:m bes2 f2 c2
  d2:m bes2 c2 d2:m
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
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix 2"
		  	%\set Staff.shortInstrumentName = #"voix 2"
			%\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.5
  			\new Voice = "SecondVoice" { \transpose c c { \SecondVoice } }
		>>

		\new Staff <<
		  	%\set Staff.instrumentName = #"vocal"
		  	%\set Staff.shortInstrumentName = #"vocal"
		  	%\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "ThirdVoice"
    			{ \transpose c' c' { \voiceOne \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \transpose c' c' { \voiceTwo \FourthVoice } }
		>>
	>>
}
