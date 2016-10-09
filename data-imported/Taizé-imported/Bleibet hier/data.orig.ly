% Lily was here -- automatically converted by /usr/bin/midi2ly from /home/jkaspar/fun/taize/songs/Bleibet hier/ensemble.mid
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key f \major
    
  \time 4/4 
  

  \key f \major
  
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  \skip 1*6 
  \tempo 4 = 72 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "Soprano"
  
}

trackBchannelB = \relative c {
  f'4 f e4. e8 
  | % 2
  f f4 f8 e4*174/120 r4*66/120 
  | % 3
  f2 g4 c 
  | % 4
  a2 g4*174/120 r4*66/120 
  | % 5
  f2 f4 g 
  | % 6
  e2 e4 r4 
  | % 7
  f f e4. e8 
  | % 8
  f f4 f8 e4*174/120 r4*66/120 
  | % 9
  f2 g4 c 
  | % 10
  a2 g4*174/120 r4*66/120 
  | % 11
  f2 f4 g 
  | % 12
  e2 e4 r4 
  | % 13
  f f e4. e8 
  | % 14
  f f4 f8 e4*174/120 r4*66/120 
  | % 15
  f2 g4 c 
  | % 16
  a2 g4*174/120 r4*66/120 
  | % 17
  f2 f4 g 
  | % 18
  e2 e4 r4 
  | % 19
  f f e4. e8 
  | % 20
  f f4 f8 e4*174/120 r4*66/120 
  | % 21
  f2 g4 c 
  | % 22
  a2 g4*174/120 r4*66/120 
  | % 23
  f2 f4 g 
  | % 24
  e2 e4 r4 
  | % 25
  f f e4. e8 
  | % 26
  f f4 f8 e4*174/120 r4*66/120 
  | % 27
  f2 g4 c 
  | % 28
  a2 g4*174/120 r4*66/120 
  | % 29
  f2 f4 g 
  | % 30
  e2 e4 r4 
  | % 31
  f f e4. e8 
  | % 32
  f f4 f8 e4*174/120 r4*66/120 
  | % 33
  f2 g4 c 
  | % 34
  a2 g4*174/120 r4*66/120 
  | % 35
  f2 f4 g 
  | % 36
  e2 e4 r4 
  | % 37
  f f e4. e8 
  | % 38
  f f4 f8 e4*174/120 r4*66/120 
  | % 39
  f2 g4 c 
  | % 40
  a2 g4*174/120 r4*66/120 
  | % 41
  f2 f4 g 
  | % 42
  e2 e4 r4 
  | % 43
  f f e4. e8 
  | % 44
  f f4 f8 e4*174/120 r4*66/120 
  | % 45
  f2 g4 c 
  | % 46
  a2 g4*174/120 r4*66/120 
  | % 47
  f2 f4 g 
  | % 48
  e2 e4 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = {
  
  \set Staff.instrumentName = "Alto"
  
}

trackCchannelB = \relative c {
  d' d d4. d8 
  | % 2
  d d4 d8 d4*174/120 r4*66/120 
  | % 3
  d2 e4 e 
  | % 4
  f2 e4*174/120 r4*66/120 
  | % 5
  d2 d4 d 
  | % 6
  d des8 b des4 r4 
  | % 7
  d d d4. d8 
  | % 8
  d d4 d8 d4*174/120 r4*66/120 
  | % 9
  d2 e4 e 
  | % 10
  f2 e4*174/120 r4*66/120 
  | % 11
  d2 d4 d 
  | % 12
  d des8 b des4 r4 
  | % 13
  d d d4. d8 
  | % 14
  d d4 d8 d4*174/120 r4*66/120 
  | % 15
  d2 e4 e 
  | % 16
  f2 e4*174/120 r4*66/120 
  | % 17
  d2 d4 d 
  | % 18
  d des8 b des4 r4 
  | % 19
  d d d4. d8 
  | % 20
  d d4 d8 d4*174/120 r4*66/120 
  | % 21
  d2 e4 e 
  | % 22
  f2 e4*174/120 r4*66/120 
  | % 23
  d2 d4 d 
  | % 24
  d des8 b des4 r4 
  | % 25
  d d d4. d8 
  | % 26
  d d4 d8 d4*174/120 r4*66/120 
  | % 27
  d2 e4 e 
  | % 28
  f2 e4*174/120 r4*66/120 
  | % 29
  d2 d4 d 
  | % 30
  d des8 b des4 r4 
  | % 31
  d d d4. d8 
  | % 32
  d d4 d8 d4*174/120 r4*66/120 
  | % 33
  d2 e4 e 
  | % 34
  f2 e4*174/120 r4*66/120 
  | % 35
  d2 d4 d 
  | % 36
  d des8 b des4 r4 
  | % 37
  d d d4. d8 
  | % 38
  d d4 d8 d4*174/120 r4*66/120 
  | % 39
  d2 e4 e 
  | % 40
  f2 e4*174/120 r4*66/120 
  | % 41
  d2 d4 d 
  | % 42
  d des8 b des4 r4 
  | % 43
  d d d4. d8 
  | % 44
  d d4 d8 d4*174/120 r4*66/120 
  | % 45
  d2 e4 e 
  | % 46
  f2 e4*174/120 r4*66/120 
  | % 47
  d2 d4 d 
  | % 48
  d des8 b des4 
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {
  
  \set Staff.instrumentName = "Tenor"
  
}

trackDchannelB = \relative c {
  a' a bes4. bes8 
  | % 2
  a a4 a8 bes4*174/120 r4*66/120 
  | % 3
  a2 c4 c 
  | % 4
  c2 c4*174/120 r4*66/120 
  | % 5
  a2 a4 bes 
  | % 6
  a2 a4 r4 
  | % 7
  a a bes4. bes8 
  | % 8
  a a4 a8 bes4*174/120 r4*66/120 
  | % 9
  a2 c4 c 
  | % 10
  c2 c4*174/120 r4*66/120 
  | % 11
  a2 a4 bes 
  | % 12
  a2 a4 r4 
  | % 13
  a a bes4. bes8 
  | % 14
  a a4 a8 bes4*174/120 r4*66/120 
  | % 15
  a2 c4 c 
  | % 16
  c2 c4*174/120 r4*66/120 
  | % 17
  a2 a4 bes 
  | % 18
  a2 a4 r4 
  | % 19
  a a bes4. bes8 
  | % 20
  a a4 a8 bes4*174/120 r4*66/120 
  | % 21
  a2 c4 c 
  | % 22
  c2 c4*174/120 r4*66/120 
  | % 23
  a2 a4 bes 
  | % 24
  a2 a4 r4 
  | % 25
  a a bes4. bes8 
  | % 26
  a a4 a8 bes4*174/120 r4*66/120 
  | % 27
  a2 c4 c 
  | % 28
  c2 c4*174/120 r4*66/120 
  | % 29
  a2 a4 bes 
  | % 30
  a2 a4 r4 
  | % 31
  a a bes4. bes8 
  | % 32
  a a4 a8 bes4*174/120 r4*66/120 
  | % 33
  a2 c4 c 
  | % 34
  c2 c4*174/120 r4*66/120 
  | % 35
  a2 a4 bes 
  | % 36
  a2 a4 r4 
  | % 37
  a a bes4. bes8 
  | % 38
  a a4 a8 bes4*174/120 r4*66/120 
  | % 39
  a2 c4 c 
  | % 40
  c2 c4*174/120 r4*66/120 
  | % 41
  a2 a4 bes 
  | % 42
  a2 a4 r4 
  | % 43
  a a bes4. bes8 
  | % 44
  a a4 a8 bes4*174/120 r4*66/120 
  | % 45
  a2 c4 c 
  | % 46
  c2 c4*174/120 r4*66/120 
  | % 47
  a2 a4 bes 
  | % 48
  a2 a4 
}

trackD = <<

  \clef bass
  
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


trackEchannelA = {
  
  \set Staff.instrumentName = "Bass"
  
}

trackEchannelB = \relative c {
  d d d4. d8 
  | % 2
  d d4 d8 d4*174/120 r4*66/120 
  | % 3
  d2 c4 c 
  | % 4
  f2 c4*174/120 r4*66/120 
  | % 5
  d2 d4 d 
  | % 6
  a2 a4 r4 
  | % 7
  d d d4. d8 
  | % 8
  d d4 d8 d4*174/120 r4*66/120 
  | % 9
  d2 c4 c 
  | % 10
  f2 c4*174/120 r4*66/120 
  | % 11
  d2 d4 d 
  | % 12
  a2 a4 r4 
  | % 13
  d d d4. d8 
  | % 14
  d d4 d8 d4*174/120 r4*66/120 
  | % 15
  d2 c4 c 
  | % 16
  f2 c4*174/120 r4*66/120 
  | % 17
  d2 d4 d 
  | % 18
  a2 a4 r4 
  | % 19
  d d d4. d8 
  | % 20
  d d4 d8 d4*174/120 r4*66/120 
  | % 21
  d2 c4 c 
  | % 22
  f2 c4*174/120 r4*66/120 
  | % 23
  d2 d4 d 
  | % 24
  a2 a4 r4 
  | % 25
  d d d4. d8 
  | % 26
  d d4 d8 d4*174/120 r4*66/120 
  | % 27
  d2 c4 c 
  | % 28
  f2 c4*174/120 r4*66/120 
  | % 29
  d2 d4 d 
  | % 30
  a2 a4 r4 
  | % 31
  d d d4. d8 
  | % 32
  d d4 d8 d4*174/120 r4*66/120 
  | % 33
  d2 c4 c 
  | % 34
  f2 c4*174/120 r4*66/120 
  | % 35
  d2 d4 d 
  | % 36
  a2 a4 r4 
  | % 37
  d d d4. d8 
  | % 38
  d d4 d8 d4*174/120 r4*66/120 
  | % 39
  d2 c4 c 
  | % 40
  f2 c4*174/120 r4*66/120 
  | % 41
  d2 d4 d 
  | % 42
  a2 a4 r4 
  | % 43
  d d d4. d8 
  | % 44
  d d4 d8 d4*174/120 r4*66/120 
  | % 45
  d2 c4 c 
  | % 46
  f2 c4*174/120 r4*66/120 
  | % 47
  d2 d4 d 
  | % 48
  a2 a4 
}

trackE = <<

  \clef bass
  
  \context Voice = voiceA \trackEchannelA
  \context Voice = voiceB \trackEchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
    \context Staff=trackE \trackA
    \context Staff=trackE \trackE
  >>
  \layout {}
  \midi {}
}
