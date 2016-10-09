\version "2.14.2"

first = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 2 = 48
	\relative c'' {
	  g2 g4. e8 | g2 r4 g4 | fis2 fis2 | fis2. r4 |
	  g2 a4. a8 | b2 r4 b4 | c2 b2 | e,2. r4 \bar "|."
	}
}

second = {
	\relative c' {
	  e2 e4. e8 | e2 s4 e4 | e2 e2 | dis2. s4 |
	  e2 fis4. fis8 | g2 s4 g4 | e2 dis2 | e2. s4 |
	}
}

third = {
	\relative c' {
	  b2 b4. b8 | c2 r4 c4 | c2 c2 | b2. r4 |
	  b2 d4. d8 | d2 r4 g,4 | a4( g4) | fis2 | g2. |
	}
}

fourth = {
	\clef bass
	\key g\major
	\relative c {
	  e2 e4. e8 | c2 s4 c4 | a2 a2 | b2. s4 |
	  e2 d4. d8 | g2 s4 e4 | a,2 b2 | e2. s4 |
	}
}

text = \lyricmode {
	Wait for the Lord,
	whose day is near.
	Wait for the Lord:
	keep watch, take heart!
}

emphasize = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

textp = \lyricmode {
  	\emphasize
	Pan blis -- ko jest, o -- cze -- kuj Go.
	Pan blis -- ko jest, w_Nim ser -- ca moc.
}

harmonies = \chordmode {
  e1:m c1 a1:m6 b1
  e2:m d2 g1 a2:m b2 e1:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {{ \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne  \transpose d d { \first } }
			\addlyrics { \text }
			\addlyrics { \textp }
  			\new Voice= "second"
    			{ \voiceTwo  \transpose d d { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "third"
    			{ \voiceOne \transpose c' c' { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' c' { \fourth } }
		>>
	>>
}

TextBelow = \markup{}
