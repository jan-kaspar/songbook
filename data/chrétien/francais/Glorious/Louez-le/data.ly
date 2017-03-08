\version "2.14.2"

%%%   % little smaller to fit on one page
%%%   #(set-global-staff-size 16)
%%%   
%%%   \paper{
%%%     #(define fonts
%%%       (make-pango-font-tree "URW Palladio L"
%%%                             "Nimbus Sans"
%%%                             "Luxi Mono"
%%%                              (/ 16 16)))
%%%   }

FirstVoice = {
  	\tempo 4 = 104
	\clef treble
	\key c\major
	\time 4/4
	\relative c' {
	  r8^\markup{\italic couplet} c16 c16 ~ c16 c8 d16 ~ d16 d8 d16 ~ d16 e8 e16 ~ | e4 r4 r2 |
	  r8 a16 a16 ~ a16 a8 g16 ~ g16 g8 g16 ~ g16 a8 e16 ~ | e4 r4 r2 |
	  r8 f16 f16 ~ f16 f8 g16 ~ g4 r8 g8 | g8 g16 d'16 ~ d16 b8 c16 ~ c4 a8 b8 | c4 c4 c8 c4 g8 ~ | g2 r2

	  r8 c,16 c16 ~ c16 c8 d16 ~ d16 d8 d16 ~ d16 e8 e16 ~ | e4 r4 r2 |
	  r8 a16 a16 ~ a16 a8 g16 ~ g16 g8 g16 ~ g16 a8 e16 ~ | e4 r4 r2 |
	  r8 f16 f16 ~ f16 f8 g16 ~ g4 r8 g8 | g8 g16 d'16 ~ d16 b8 c16 ~ c4 a8 b8 | c4 c4 c8 c4 g8 ~ | \partial 2. g2 r4 \break
	  
	  \partial 4 c8^\markup{\italic refrain} b8 | a8. c16 ~ c8 a8 g4 r4 | g8 g16 d'16 ~ d16 b8 c16 ~ c4 c8 b8 |
	  | a8. c16 ~ c8 a8 g4 r4 | g8 g16 d'16 ~ d16 b8 c16 ~ c4 c8 b8 |
	  | a8. c16 ~ c8 a8 g4 r8 g8 | g8 g16 d'16 ~ d16 b8 c16 ~ c4 c8 b8 |
	  | a8. c16 ~ c8 a8 g4 r4 | a8. b16 ~ b4 c8. d16 ~ d8 b8 | c1 ~ | c2 r2
	}
}


texti = \lyricmode {
  \set stanza = #"1. "
  D’i -- ci aux con -- fins de la Terre, va ré -- son -- ner no -- tre pri -- ère.
  Nous chan -- te -- rons car tout est ac -- com -- pli et nous vi -- vons de l’E -- sprit.

  Qu’é -- clate en tou -- tes les na -- tions, le ré -- veil d’u -- ne gé -- né -- ration.
  Nous dan -- ser -- ons car tout est ac -- com -- pli et nous cri -- ons Jé -- sus Christ.

  \set stanza = #"R. "
  Lou -- ez le, lou -- ez le, qui que vous soy -- ez.
  Lou -- ez le, lou -- ez le, ou que vous soy -- ez.
  Lou -- ez le, lou -- ez le, en tou -- tes cir -- con -- stances.
  Lou -- ez le, lou -- ez le, voi -- ci que Dieu a -- vance.
}

harmonies = \chordmode {
  f2 g2 c1 | f2 g2 c1 | f2 g2 e2:m a2:m d1:m7 g1
  f2 g2 c1 | f2 g2 c1 | f2 g2 e2:m a2:m d1:m7 g1
  f2 c2 g2 a2:m
  f2 c2 g2 a2:m
  f2 c2 g2 a2:m
  f2 c2 f2 g2 c1 c1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"violin"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>


	>>
}
