\version "2.14.2"

%%number=9
%%page=96

first = {
	\clef treble
	\key d\major
	\time 4/4
	\tempo 4 = 72
	\relative c'' {
		\partial 2 b8 b4 fis8
		g4 r8 e8 a4 a8 e8
		fis4 fis4 \breathe d4 d8 d8
		e4 d8 e8 fis8 fis8 b8 b8
		ais2 \breathe
		b8 b4 fis8
		g4 r8 b8 cis4 cis8 a8
		fis4 fis4 \breathe d4 d4
		e4 d8 e8 fis4 b8 ais8
		b2 \breathe b8 b4 fis8
	}
}

second = {
	\relative c' {
		d8 d4 d8
		e4 s8 d8 cis4 b8 cis8
		d4 d4 d4 d8 d8
		cis4 b8 cis8 d8 d8 e8 e8
		fis2
		d8 d4 d8
		e4 s8 d8 cis4 b8 cis8
		d4 d4 d4 d4
		e4 d8 e8 d4 cis8 cis8
		d2 d8 d4 d8
	}
}

third = {
	\key d\major
	\time 4/4
	\relative c' {
		s2 s1 s1 s1 s1 s1 s1 s1 s1
	}
}

fourth = {
	%TODO
}

text = \lyricmode {
	Jé -- sus le Christ, lu -- mière in -- té -- rieu -- re, ne lais -- se pas mes té -- nè -- bres me par -- ler.
	Jé -- sus le Christ, lu -- mière in -- té -- rieu -- re, don -- ne moi d'ac -- ceuei -- llir ton a -- mour.
	Jé -- sus le
}

harmonies = \chordmode {
  b2:m e2:m a2 d2 b2:m a2 d4 g4:6 fis2
  b2:m e2:m a2 d2 g2 g2:6 b4:m/fis fis4 b:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { { \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo { \second } }
		>>
		\new Staff <<
  			\new Voice = "third"
    			{ \voiceOne \third }
  			\new Voice= "fourth"
    			{ \voiceTwo \fourth }
		>>
	>>
}

TextBelow = \markup{}
