\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 80
	\clef treble
	\key d\major
	\time 3/4
	\relative c' {
		%\partial 4 d4 | g2 b8( g8) | b2 a4 | g2 e4 | d2 d4 | g2 b8( g8) |
		%b2 a4 | d2 b4 | d4.( b8) d8( b8) | g2 d4 | e4.( g8) g8( e8) | d2 d4 |
		%g2 b8( g8) | b2 a4 | g2. | r2. \bar "|."

		\partial 4
		a8.( d16) d2 | fis8( e32 d16.) fis2 | fis8.( e16) d2 | b4 a2 |
		a8.( d16) d2 | fis8( e32 d16.) fis2 | e8.( fis16) a2 | r4 r2 |
		fis8.( a16) a2 | fis8( e32 d16.) fis2 | fis8.( e16) d2 | b4 a2 |
		a8.( d16) d2 | fis8( e32 d16.) fis2 | e4 d2 ~ | d4 d2 

		\bar "|."
	}
}

SecondVoice = {
}


texti = \lyricmode {
	\set stanza = #"1. "
	A -- maz -- ing Grace, how sweet the sound.
	That saved a wretch like me.
	I once was lost but now am found.
	Was blind, but now I see.
}

textii = \lyricmode {
	\set stanza = #"2. "
	T'was Grace that taught my heart to fear.
	And Grace, my fears re -- lieved.
	How pre -- cious did that Grace ap -- pear.
	The hour I first be -- lieved.
}

textiii = \lyricmode {
	\set stanza = #"3. "
	Through man -- y dang -- ers, toils and snares.
	I have al -- read -- y come.
	'Tis Grace has brought me safe thus far.
	And Grace will lead me home.
}

textiv = \lyricmode {
	\set stanza = #"4. "
	The Lord has prom -- ised good to me.
	His word my hope se -- cures.
	He will my shield and por -- tion be.
	As long as life en -- dures.
}


harmonies = \chordmode {
	s4
	d2. d2. g2. d2. d2. d2. a2. a2.
	d2. d2. g2. d2. b2.:m a2.:sus4 g2. d2. 
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c des { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c des { \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
			\addlyrics { \textiv }
		>>

	>>
}
