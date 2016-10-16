\version "2.14.2"

voice_i = {
  \clef treble
  \time 4/4
    \transpose bes c'
  {
    \tempo 4 = 70
    \key bes\major
    \relative c
    {
      r1^\markup{\italic slowly} r1 r1 r2 f8 g8 bes8 c8 | bes1 ~ | bes4 f8 g8 bes8 g8 bes8 d8 | f4. d8 f2 ~ |
      f2. r8 f8 | \tuplet 3/2 {g4 g g} \tuplet 3/2 {g d g} | f2. r8 f8 | \tuplet 3/2 {g4 g g} \tuplet 3/2 {g f es} |
      f2 \tuplet 3/2 {f4 d c} | d4. c8 bes2 ~ | bes4 r4
  
      f8 g8 bes8 c8 | bes1 ~ | bes4 f8 g8 bes8 g8 bes8 d8 | f4. d8 f2 ~ |
      f2. r8 f8 | \tuplet 3/2 {g4 g g} \tuplet 3/2 {g d g} | f2. r8 f8 | \tuplet 3/2 {g4 g g} \tuplet 3/2 {g es g} |
      bes2 \tuplet 3/2 {c4 a f} | bes1 ~ | bes4. bes8 \tuplet 3/2 {c4 a f} | bes1 ~ | bes1 ~ | bes4 r2. \bar "||" \break
  
      \tempo 4 = 140
      r1^\markup{\italic fast rock} | r2 r4. f8 | bes8 bes8 r8 f8 bes8 bes8 r8 f8 | bes8 bes8 r8 f8 bes8 a8 g8 f8 |
      g8 g8 r8 d8 g8 g8 r8 d8 | g8 g8 r4  
    }
  }

  \transpose b c'
  {
    \key b\major
    \relative c
    {
	  fis8^\markup{\italic solo} gis b cis |
      b1 ~ | b4 fis8 gis b gis b dis | fis4. dis8 fis2 ~ | fis2. r8 fis8 | \tuplet 3/2 {gis4 gis gis} \tuplet 3/2 {gis4 dis gis} |
      fis2. r8 fis8 | \tuplet 3/2 { gis4 gis gis} gis4 fis8 e8 | fis2 \tuplet 3/2 {fis4 dis cis} | dis1 \bar "||" \break
	}
  }

  {
    \key c\major
    \relative c'
    {
	  r2 g8^\markup{\italic choir} a8 c8 d8 | c1 ~ | c4 g8 a8 c8 a8 c8 e8 | g4. e8 g2 ~ | g2. r8 g8 | \tuplet 3/2 {a4 a a} \tuplet 3/2 {a e a} |
      g2. r8 g8 | \tuplet 3/2 {a4 a a} \tuplet 3/2 {a f a} | c2 \tuplet 3/2 {d4 b4 g4} | c1 | r4. c8 \tuplet 3/2 {d4 b g} | c1 |
	  r2^\markup{\italic choir+solo} r4. g8 | c8 c8 r2. | r2 r4. a8 | a8 a8 r2. | r1 |c8 c8 r2. | r2 r4. a8 | a8 a8 r2. |
	  r2 r4. g8 | c8 c8 r8 g8 c8 c8 r8 g8 |
      c8 c8 r8 g8 c8 b8 a8 g8 | a8 a8 r8 e8 a8 a8 r8 e8 | a8 a8 r8 g8 a8 g8 a8 b8 | c8 c8 r8 g8 c8 c8 r8 g8 |
	  c8 c8 r8 g8 c8 b8 a8 g8 | a8 a8 r8 e8 a8 a8 r8 e8 | a8 a4. ~ a4 r8 g8 |
	  \tuplet 3/2 {a4 a a} \tuplet 3/2 {a4 e a} | g2. r8 g8 | \tuplet 3/2 {a4 a a} \tuplet 3/2 {a4 f a} | c2 \tuplet 3/2 {d4 b g} |
	  c1 ~ | c4^\markup{\italic slow down} r8 c8 \tuplet 3/2 {d4 b g} | c1 ~ | c1 \bar "|."
	}
  }
}


text_i = \lyricmode {
  I will fol -- low Him,
  fol -- low Him where -- ev -- er He may go.
  And near Him, I al -- ways will be,
  for not -- hing can keep me a -- way.
  He is my de -- sti -- ny.

  I will fol -- low Him,
  Ev -- er since He touched my heart I knew.
  There is -- n't an o -- cean too deep,
  a moun -- tain so high it can keep,
  keep me a -- way, a -- way from His love.

  I love Him, I love Him, I love Him.
  And where He goes
  I'll fol -- low, I'll fol -- low, I'll fol -- low.

  I will fol -- low Him,
  fol -- low Him where -- ev -- er He may go.
  There is -- n't an o -- cean too deep,
  a moun -- tain so high it can keep,
  keep me a -- way.

  We will fol -- low Him,
  fol -- low Him where -- ev -- er He may go.
  There is -- n't an o -- cean too deep,
  a moun -- tain so high it can keep,
  keep me a -- way, a -- way from His love.

  I love Him.
  I'll fol -- low.
  True love.
  For ev -- er.

  I love Him, I love Him, I love Him.
  And where He goes
  I'll fol -- low, I'll fol -- low, I'll fol -- low.

  He'll al -- ways be my true love,
  my true love, my true love,
  from now un -- til for -- ev -- er,
  for -- ev -- er, for -- ev -- er.

  There is -- n't an o -- cean too deep,
  a moun -- tain so high it can keep,
  keep us a -- way, a -- way from His love.
}

harmonies = \chordmode {
  \transpose bes c'
  {
    bes1 g1:m bes1
    g1:m bes1 bes1 d1:m d1:m g1:m d1:m es1 f1 bes1
    g1:m bes1 bes1 d1:m d1:m g1:m d1:m es1 c2:m7 f2 bes1 g2:m f2 bes1 bes1 bes4 s2.

    r1 r1
    bes1 bes1 g1:m g2:m
  }

  \transpose b c'
  {
	fis2
    b1 b1 dis1:m dis1:m gis1:m dis1:m e1 fis1 b1
  }

  {
    g1 c1 c1 e1:m e1:m a1:m e1:m f1 d2:m7 g2 c1 g1 c1 g1 c1 c1 a1:m a1:m c1 c1 a1:m a1:m c1 c1 a1:m a1:m c1 c1 a1:m a1:m
	f1 e1:m f1 d2:m7 g2 c1 a2:m g2 f1 c1
  }
}

FullLayout = {
  \new ChoirStaff <<
  	\new ChordNames {
  	  	\CommonChordSettings
  		\harmonies
  	}

  	\new Staff <<
  	  	%\set Staff.instrumentName = #"voix 1"
  	  	%\set Staff.shortInstrumentName = #"voix 1"
  		\set Staff.midiInstrument = #"flute"
  		\set Staff.midiMinimumVolume = #0.1
    		\set Staff.midiMaximumVolume = #0.99
    		\new Voice = "FirstVoice" { \voice_i }
  		\addlyrics { \text_i }
  	>>
  >>
}
