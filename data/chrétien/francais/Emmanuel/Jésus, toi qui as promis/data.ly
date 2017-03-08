\version "2.14.2"

first = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 2 = 70
	\relative c' {
	  d2.( e8) f8 ~ | f1 | e4 e e d8 c8 ~ | c2 f4 e4 | d2. e8 f8 ~ | f1 |
	  f4 f4 f4 g8 a8 ~ | a2 a2 | bes1 ~ | bes2 c8 bes8 a8 g8 |
	  a2 a4 g8 f8 ~ | f1 | d2 a'4 a8 g8 ~ | g4 g4 f4 e8 d8 ~ | d1 ~ | d2 r2 	\bar "|."
	}
}

second = {
	\relative c' {
	  d2.( d8) d8 ~ | d1 | c4 c4 c4 b8 a8 ~ | a2 c4 c4 | d2. d8 d8 ~ | d1 |
	  d4 d4 d4 e8 f8~ | f2 f2 d1 ~ | d2 e8 e8 f8 g8 |
	  f2 e4 e8 d8 ~ | d1 | f1( | e1) | d1 ~ | d2 s2 |
	}
}

third = {
	\relative c' {
	  a2 ~ a4. a8 ~ | a1 | a4 a4 e4 e8 e8 ~ | e2 a4 g4 | f2. g8 a8 ~ | a1 |
	  bes4 bes g c8 c8 ~ | c2 s2 | s2 bes4( a4) | g2 g8 g8 c8 c8 |
	  c2 g4 g8 a8 ~ | a1 | d1 ~ | d2( c2) | a1( | d2) s2
	}
}

fourth = {
	\clef bass
	\key f\major

	\relative c {
	  d2 ~ d4. d8 ~ | d1 | a4 a4 a4 a8 a8 ~| a2 a4 c4 | d2. d8 d8 ~ | d1 |
	  c4 c4 c4 c8 f8 ~ | f2 r2 | r2 g4( f4) | e2 c8 c8 e8 e8 |
	  f2 f4 e8 d8 ~ | d2( c2) | bes1( | c1) | d1 ~ | d2 r2
	}
}

text = \lyricmode {
	Jé -- sus, toi qui as pro -- mis
    d'en -- voy -- er l'Es -- prit,
    à ceux qui te prient,
    o Dieu, pour por -- ter au mon -- de ton feu
    voi -- ci l'of -- fran -- de de nos vies.
}

harmonies = \chordmode {
	d1:m d1:m a1:m a2.:m c4 d1:m d1:m
	bes2./c c4 f1 g1:m c1:7
	f2. a4 d1:m bes1 c1 d1:m d1:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  \set chordChanges = ##t
		  \harmonies
		}
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne  \transpose d d { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo  \transpose d d { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"violin"
			%\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.8
  			\new Voice = "third"
    			{ \voiceOne \transpose c' c' { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' c' { \fourth } }
		>>
	>>
}
