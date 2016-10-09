\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 120
	\clef treble
	\key f\major
	\time 3/4
	\relative c' {
		c4 f4 f4 | f4 a4 a4 | g4 g4 bes8( g8) | a2 r4 |
		c,4 f4 f4 | f4 a4 a4 | g4 g8( a8) bes8( g8) | f2 r4
		\repeat volta 2 {
			a4 c4 c8( d8) | g,2 bes4 | a4 c4 c8( d8) | g,2 bes4 |
			a4 a4 g4 | f2 r4
		}
	}
}

SecondVoice = {
	\relative c' {
		a4 a4 a4 | a4 c4 c4 | bes4 bes4 d8( bes8) | c2 s4
		a4 a4 a4 | a4 c4 c4 | bes4 bes8( c8) d8( bes8) | c2 s4

%		s2. s2. s2. s2.
%		s2. s2. s2. s2.
		f4 a4 a8( bes8) | e,2 g4 | f4 a4 a8( bes8) | e,2 g4 |
		f4 f4 e4 | f2 s4
	 }
}

ThirdVoice = {
	\clef bass 
	\key g\major
	\time 3/4
	\relative c' {
	 	g2. | g2. | a2. | g2. |
	 	g2. | g2. | a2. | g2. |
		g2. | fis4 e4 fis4 |
		g2. | fis4 e4 fis4 |
		g2 fis4 | g2 r4
	}
}

FourthVoice = {
	\relative c {
		d2. | d2. | a4 c4 d4 | d2.
		d2. | d2. | a4 c4 d4 | d2.
		d2. | a4 c4 d4 |
		d2. | a4 c4 d4 |
		d2. | d2
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Já ma -- lý při -- chá -- zím ko -- le -- do -- vat, co u -- mím o Kri -- stu
	pro -- zpě -- vo -- vat, že se na -- ro -- dil v_Be -- tlé -- mě v_chlé -- vě,
	chci zvě -- sto -- vat.
}

harmonies = \chordmode {
	f2. f2. g2:m c4:7 f2. |
	f2. f2. g2:m c4:7 f2. |
	f2. c2.:7 f2. c2.:7 | f2 c4:7 | f2.
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' d' { \harmonies }
		}

		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \voiceOne \transpose c' d' { \FirstVoice } }
			\addlyrics { \text }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose c' d' { \SecondVoice } }
		>>

		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \transpose c' c' { \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \transpose c' c' { \FourthVoice } }
		>>
	>>
}

TextBelow = \markup{}
