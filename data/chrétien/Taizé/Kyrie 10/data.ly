\version "2.14.2"

%%number=84

FirstVoice = {
	\clef treble
	\key c\major
	\time 2/4
	\tempo 4 = 70
	\relative c' {
		e8 e8 a4 | b8 b8 c4 | b8( a8) gis8 gis8 | a4 r4
		b8 b8 c4 | d8 d8 e4 | d8( c8) b8 b8 | a2
	}
}

SecondVoice = {
	\relative c' {
		e8 e8 e4 | g8 g8 g4 | f4 e8 e8 | e4 s4
		e8 e8 e4 | g8 g8 e4 | f4 b,8 e8 | c2
	}
}

ThirdVoice = {
	\clef bass
	\key c\major
	\relative c' {
		b8 b8 c4 | d8 d8 e4 | d8( c8) b8 b8 | c4 r4
		gis8 gis8 a4 | b8 b8 c4 | b8( a8) gis8 gis8 | e2
	}
}

FourthVoice = {
	\relative c {
		e8 e8 a4 | g8 g8 c,4 | d4 e8 e8 | a4 s4
		e8 e8 a4 | g8 g8 c,4 | d4 e8 e8 | a,2
	}
}

textA = \lyricmode {
	\set stanza = #"1., 3. "
	Ky -- ri -- e, Ky -- ri -- e e -- le -- i -- son.
	Ky -- ri -- e, Ky -- ri -- e e -- le -- i -- son.
}

textB = \lyricmode {
	\set stanza = #"2. "
	Cr -- i -- ste, Cr -- i -- ste e -- le -- i -- son.
	Cr -- i -- ste, Cr -- i -- ste e -- le -- i -- son.
}

harmonies = \chordmode {
	e4:m a4:m g4 c4 d4:m e4 a2:m
	e4 a4:m g4 c4 d4:m e4 a2:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose e' a { \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"violin"
  			\new Voice = "first"
    			{ \voiceOne \transpose e' a { \FirstVoice } }
  			\new Voice= "second"
    			{ \voiceTwo \transpose e' a { \SecondVoice } }
			\addlyrics { \textA }
			\addlyrics { \textB }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "third"
    			{ \voiceOne \transpose e' a { \ThirdVoice } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose e' a { \FourthVoice } }
		>>
	>>
}
