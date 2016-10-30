\version "2.14.2"

first = {
  \clef treble
  \key c\major
  \time 3/4
  \tempo 4 = 60 % TODO
  \relative c'' {
    \partial 8 g8
	
	\repeat volta 2 {
	  c8 c8 c8 b8 c8 g8 | \time 4/4 a8 g8 f4. f8 f8 a8 | g4 d8 d8 e2 |
	  \time 3/4 c8 c8 f8 f8 e8 e8 | a4. a8 \tuplet 3/2 { a8 a8 a8 } | b4. b8 \tuplet 3/2 { c8 b8 c8 } |
	  \time 4/4 a4 g2 r8 g8
	}
  }
}

second = {
  \relative c' {
    d8 | e8 e8 d8 d8 c8 c8 | c8 c8 c4. c8 d8 d8 | d4 d8 d8 c2 |
	c8 c8  d8 d8 b8 b8 | e4. e8 \tuplet 3/2 { f8 e8 d8 } | b4. e8 \tuplet 3/2 { e8 d8 c8 } | f4 d2 s8 d8 |
  }
}

third = {
  \relative c' {
    b8 | g8 g8 g8 g8 g8 g8 | f8 g8 a4. a8 a8 f8 | g4 g8 g8 g2 |
	a8 a8 a8 a8 gis8 gis8 | a4. a8 \tuplet 3/2 { a8 a8 a8 } | gis4. gis8 \tuplet 3/2 { a8 a8 a8 } | c4 b2 r8 b8
  }
}

fourth = {
  \clef bass
  \key c\major
  \relative c' {
	g8 | c,8 c8 d8 d8 e8 e8 | d8 e8 f4. f8 d8 d8 | b4 a8 b8 c2 |
	a8 a8 d8 d8 e8 d8 | c4. c8 \tuplet 3/2 { d8 e8 f8 } | e4. e8 \tuplet 3/2 { c8 d8 e8 } | f4 g2 s8 g8
  }
}

text = \lyricmode {
  Heu -- reux qui s’a -- ban -- donne à toi, ô Dieu,
  dans la con -- fian -- ce du coeur.
  Tu nous gar -- des dans la joie,
  la sim -- pli -- ci -- té, la mi -- sé -- ri -- cor -- de.
  Heu -- 
}

harmonies = \chordmode {
  g8 c2. | f1 g2 c2
  a4:m d4:m e4 | a2.:m e2 a4:m | f4 g2.
}

FullLayout = {
  \new ChoirStaff <<
    \new ChordNames {{ \harmonies } }
    \new Staff <<
      \set Staff.midiInstrument = #"flute"
      \set Staff.midiMinimumVolume = #0.1
      \set Staff.midiMaximumVolume = #0.99
        \new Voice = "first"
          { \voiceOne  \transpose d d { \first } }
      \addlyrics { \text }
        \new Voice= "second"
          { \voiceTwo  \transpose d d { \second } }
    >>
    \new Staff <<
      \set Staff.midiInstrument = #"cello"
      \set Staff.midiMinimumVolume = #0.1
      \set Staff.midiMaximumVolume = #0.5
        \new Voice = "third"
          { \voiceOne \transpose c' c' { \third } }
        \new Voice= "fourth"
          { \voiceTwo \transpose c' c' { \fourth } }
    >>
  >>
}

TextBelow = \markup{}
