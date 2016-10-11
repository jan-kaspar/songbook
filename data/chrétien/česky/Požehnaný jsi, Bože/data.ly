\version "2.14.2"

voice_i = {
	\clef treble
	\key c\major
	\time 4/4
	\tempo 4 = 70
	\relative c' {
	  e4 e8 d8 f8 e8 d8 c8 | e4. d8 c4 r4 | c'4. a8 g4 f8 e8 | e2 d4 r4 |
	  e4 e8 d8 f8 e8 d8 c8 | e4. d8 c4 r4 | c'4. a8 g4 f8 e8 | d2 c4 r4 \bar "|."
	}
}

harmonies = \chordmode {
  c2 f2 | c2 a2:m | f2 c2 | c2 g2 |
  c2 f2 | c4 e4 a2:m | f2 c2 | g2 c2
}

text_i = \lyricmode {
  Po -- že -- hna -- ný jsi, Bo -- že, na vě -- ky, z_Tvé ru -- ky vše -- chno má -- me.
  Po -- že -- hna -- ný jsi, Bo -- že ve -- li -- ký.
\set stanza = #"1."
  Chléb Ti zde při -- ná -- ší -- me.
}

text_ii = \lyricmode {
	"" 
	"" "" "" "" | "" "" "" "" | "" "" "" "" | "" "" "" "" 
	"" "" "" "" | "" "" "" "" | "" ""
\set stanza = #"2."
	Ví -- no Ti při -- ná -- ší -- me.
}


text_iii = \lyricmode {
	"" 
	"" "" "" "" | "" "" "" "" | "" "" "" "" | "" "" "" "" 
	"" "" "" "" | "" "" "" "" | "" ""
\set stanza = #"3."
	Da -- ry Ti při -- ná -- ší -- me.
}

FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix 1"
		  	%\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice { \voice_i }
			\addlyrics { \text_i }
			\addlyrics { \text_ii }
			\addlyrics { \text_iii }
		>>
	>>
}
