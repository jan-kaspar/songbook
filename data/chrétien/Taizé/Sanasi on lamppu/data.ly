\version "2.14.2"

%%number=402

first = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 120
	\relative c' {
		d4 e4 f4 g4
		a2 a2
		bes4 bes4 a4 g4
		a4 a4 a2 \break
		d4 d4 c4 bes4
		a2
		g2
		bes4 g4 g4. a8
		f4 d4 d2 \bar "|."
	}
}

second = {
	\clef treble 
	\key f\major
	\relative c' {
		s1
		d4 e4 f4 d4
		g2 g2
		f4( d4) e2
		g4 g4 e4 e4
		f2 d2
		d4 d4  e4. e8
		d4 d4 d2
	}
}

third = {
	\relative c' {
		s1 s1 s1 s2 a2
		bes4 bes4 c4 c4
		f2 bes,2
		g4 bes4 c4. a8
		s1
	}
}

thirdV = {
	\clef treble 
	\key f\major
	\relative c' {
		s1
		d4 e4 f4 d4
		g2 g2
		f4( d4) a2
		bes4 bes4 c4 c4
		f2 bes,2
		g4 bes4 c4. a8
		d4 d4 d2
	}
}

textI = \lyricmode {
	Sa -- na -- si -- on lamp -- pu, va -- lo as -- ke -- leil -- la -- ni,
	sa -- na -- si -- on lamp -- pu, va -- lo as -- ke -- leil -- la -- ni.
}

textII = \lyricmode {
	Sa -- na -- si -- on lamp -- pu, lamp -- pu,
	sa -- na -- si -- on lamp -- pu, va -- lo as -- ke -- leil -- la -- ni.
}

harmonies = \chordmode {
	d1:m s1 g1:m d1:m g2:m c2 f2 g2:m s2 c2 d1:m
}


FullLayout = {
<<
	\new ChoirStaff <<
		\new ChordNames \with { midiInstrument = "acoustic guitar (nylon)" }
		{
			\harmonies
		}

		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \first }
			\addlyrics { \textI }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"cello"
  			\new Voice= "second"
    			{ \voiceOne \second }
			\addlyrics { \textII }
  			\new Voice = "third"
    			{ \voiceTwo \third }
		>>
	>>

	\new Staff \with { \remove "Staff_performer" }
	<<
		\set Staff.instrumentName = #"alto recorder"
  		\new Voice = "thirdV"
			{ \voiceOne \transpose f c' { \thirdV } }
	>>
>>
}

\paper{
	indent = 2.5\cm
}
