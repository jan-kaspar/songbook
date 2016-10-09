\version "2.14.2"

%%number=15
%%page=168

first = {
	\clef treble
	\key f\major
	\time 2/4
	\tempo 4 = 60
	a'8 a'8 g'8 g'8
	f'4 r8 f'8
	bes'4( a'4)
	g'2 \breathe
	a'8 a'8 g'8 g'8
	f'2 d'8 d'8 \times 2/3 { e'8( d'8) e'8 }
	f'2 \bar "|."
}

second = {
	f'8 f'8 c'8 c'8
	d'4 s8 c'8
	bes4( d'4)
	d'4( c'4)
	f'8 f'8 c'8 c'8
	d'2
	d'8 d'8 c'8 c'8
	c'2
}

third = {
	\clef treble
	\key f\major
	\relative c'' {
	  a8 a8 c8 c8 | f,8( g8 a8) a8 | d4 a4 | b4( c4) | c8 d8 e8 e8 | f4( d4) | d8 d8 c8 c8 | a2
	}
}

text = \lyricmode {
	U -- bi ca -- ri -- tas et a -- mor, u -- bi ca -- ri -- tas De -- us i -- bi est.
}

harmonies = \chordmode {
	f4 c4 d2:m bes4 d4 g4 c4 f4 c4 d2:m g4:m c4 f2
}

\paper{
	indent = 1\cm
}

FullLayout = {
<<
	\new ChoirStaff <<
		\new ChordNames {
			\harmonies
		}
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \first }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo \second }
		>>
	>>

	\new Staff <<
		\set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = #"solo"
  		\new Voice = "third"
    		{ \third }
	>>
>>
}
