\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key d\major
	\time 4/4
	\relative c' {
		d4 d8( e8) fis4 gis4 | a4 a4 a2 | gis4 a4 b2 | a2 r2 |
		a4 a4 g4 g4 | fis4 fis4 e2 | fis4 g4 fis4( e4) | d2 r2
		\break
		fis4 e4 fis4 g4 | a2 d,2 |
		fis4 e4 fis4 g4 | a2 d,2 |
		d2 b'2 |  a4 g4 fis4( e4) | d2 r2
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
		f4 f8( e8) f4 g4 | g4 a4 g2 | g1 | g2 s2 |
		e4 g4 g4 e4 | f4 f4 e2 | f4 d4 f4( e4) | c2 s2
		f4 e4 f4 g4 | e2 c2 |
		f4 e4 f4 g4 | e2 c2 |
		f2 f2 | a4 g4 f4( e4) | c2 s2
	}
}

ThirdVoice = {
	\relative c' {
		a4 a8( g8) f4 g4 | g4 f4 g2 | d'4 e4 f2 | e2 s2
		c4 c4 c4 c4 | c4 c4 c2 | f,4 g4 c4 bes4 | a2 s2
		s1 s1 s1 s1
		f2 f2 | f4 g4 a4 bes4 | a2 s2
	}	
}

FourthVoice = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c {
		f4 f8( e8) d4 d4 | c4 c4 c2 | g'2. b4 | c2 r2
		c,4 e4 g4 c,4 | f4 f4 c2 | f4 g4 c,2 | f2 r2 |
		c'1 | c8 bes8 a8 g8 f2 |
		c'1 | c8 bes8 a8 g8 f2 |
		d2 bes2 | a4 bes4 c4( c4) | f2 r2
	}	
}

text = \lyricmode {
	\set stanza = #"1. "
	Na -- ro -- dil se Kris -- tus Pán, ve -- sel -- me se,
	z_rů -- že kví -- tek vy -- kvet nám, ra -- duj -- me se.
	\set stanza = #"R: "
	Z_ži -- vo -- ta čis -- té -- ho, z_ro -- du krá -- lov -- ské -- ho,
	nám, nám, na -- ro -- dil se.
}

harmonies = \chordmode {
	d4. a8 b4:m e4:7 | a4 d4 a2 | e4 a4 e2:7 | a1
	a2 a2:7 | d2 a2 | d4 e4:m d4 a4:7 | d1
	d4 a4 d4 e4:m | a2 d2 |
	d4 a4 d4 e4:m | a2 d2 |
	g1 | d4 e4:m d4 a4:7 | d1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \voiceOne \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose f' d' { \SecondVoice } }
		>>
		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \transpose f' d' { \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \transpose f' d' { \FourthVoice } }
		>>
	>>
}
