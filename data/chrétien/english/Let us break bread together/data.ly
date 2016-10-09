\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 120
	\clef treble
	\key es\major
	\time 4/4
	\relative c' {
		bes4^\markup{\italic couplet}  c4 es2 es4. c8 es8 g4. f4 f4 es2 ~ es1
		g4 as4 bes2 bes4. g8 bes8 d4. c4 c4 bes2 ~ bes1 \bar "||" \break
		es,4^\markup{\italic refrain}  g4 bes2 bes4 bes4 bes2 c4 bes4 as4 as8 f8 as4 as4 as2
		bes4( as4) g2 g2 es8 g4. f2 es2 ~ es1
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
		bes4 c4 bes2 c2 es2 c2 bes2 as2 bes2
		d2 es2 f2 es2 es2 es f4 es4 d2
		c2 es2 f2 e2 g2 f2 f2 f2
		d2 bes2 es4 d4 c2 es4 d4 es2 c2 es2
	}
}

ThirdVoice = {
	\clef bass 
	\key es\major
	\time 4/4
	\relative c' {
		bes4 as4 g2 as2 bes2 as2 g2 f2 g2
		bes4 as4 g2 bes2 bes2 a2 bes2 as4 g4 f2
		as2 g2 g2 g2 c2 c2 c2 bes2
		g4 f4 es4 d4 c4 bes4 es2 as2 g2 as2 g2
	}
}

FourthVoice = {
	\relative c {
		bes2 es2 es2 es2 es2 es2 ~ es1
		bes2 es2 es2 c2 f2 bes,2 ~ bes1
		bes2 f'2 des2 c2 e2 f2 es2 d2 bes2 es4 d c bes as2 bes2 es2 ~ es1
	}
}

texti = \lyricmode {
  	\set stanza = #"1. "
	Let us break bread to -- ge -- ther on our knees,
	let us break bread to -- ge -- ther on our knees.
	When I fall on my knees with my face to the ri -- sing sun, 
	O Lord, have mer -- cy on me.
}

textii = \lyricmode {
  	\set stanza = #"2. "
	Let us drink wine to -- ge -- ther on our knees,
	let us drink wine to -- ge -- ther on our knees.
}

textiii = \lyricmode {
  	\set stanza = #"3. "
	Let us praise God to -- ge -- ther on our knees,
	let us praise God to -- ge -- ther on our knees.
}

harmonies = \chordmode {
	a2 d2 g2 d2 a2 d2 g2 d2
	a2 d2 d2 b2:m e2 a2 d2 a2
	d2 a2 fis:m b1:7 e1:m a1:7 d2 b2:m g2 a2 d2 g2 d2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose d d { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix 1"
		  	%\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose es d { \voiceOne \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
  			\new Voice= "SecondVoice" { \transpose es d { \voiceTwo \SecondVoice } }
		>>

		\new Staff <<
			\set Staff.midiInstrument = #"cello"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "ThirdVoice" { \transpose es d { \voiceOne \ThirdVoice } }
  			\new Voice= "FourthVoice" { \transpose es d { \voiceTwo \FourthVoice } }
		>>
	>>
}
