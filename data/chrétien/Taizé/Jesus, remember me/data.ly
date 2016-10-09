\version "2.14.2"

%%number=37
%%page=100

first = {
	\clef treble
	\key es\major
	\time 3/4
	\tempo 4 = 69
	\relative c'' {
		g4 g4 r8 g8
		as8 g8 as4 r4
		f8 f8 f8 f8 es8 f8
		g8( f8) g2
		es4 es4 r8 es8
		f8 es8 f4 r4
		d8 d8 d8 d8 c8 d8
		es4 es2
	}
}

second = {
	\relative c' {
	  es4 es4 s8 es8
	  f8 es8 f4 s4
	  d8 d8 d8 d8 c8 d8
	  es8( d8) es2
	  c4 c4 s8 c8
	  c8 c8 c4 s4
	  bes8 bes8 bes8 bes8 as8 bes8
	  bes4 bes2
	}
}

third = {
  %TODO
}

fourth = {
	%TODO
}

text = \lyricmode {
	Je -- sus, re -- mem -- ber me when you come in -- to your king -- dom.
	Je -- sus, re -- mem -- ber me when you come in -- to your king -- dom.
}

harmonies = \chordmode {
	\times 3/1 {d4 e4:m/d a4 d4 b4:m g4:6 a4 d4}
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {{ \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne  \transpose es d { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo  \transpose es d { \second } }
		>>
		%\new Staff <<
  		%	\new Voice = "third"
    	%		{ \voiceOne \transpose c' e { \third } }
  		%	\new Voice= "fourth"
    	%		{ \voiceTwo \transpose c' e { \fourth } }
		%>>
	>>
}

TextBelow = \markup{}
