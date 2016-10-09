\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 110
	\clef treble
	\key c\major
	\time 4/4
	\relative c'' {
	  \partial 2 g4 a4 | \tuplet 3/2 {c8 a g} e8 c8 c4 d4 |\partial 2 e2\break

	  \repeat volta 2 {
		\partial 2
		g4 a4 | e8 c4. c8 c c c | e8 c4. g'8 g4 a8~ | a2 a8 a4 g8~ | g2
		g4 a4 | e8 c4. c8 c c c | e8 c4. c8 c4 e8~ | e2 d8 d4 c8~ | c2
		c'4 c | a8 g4. c8 c c c | a8 g4. g8 g4 a8~ | a2 a8 a4 g8~ | g2
		c4 c4 | a8 g4. e8 e e e | d8 c4. c8 c4 e8~ | e2 d8 d4 c8~ | \partial 2 c2
	  }
	}
}

texti = \lyricmode {
	"" "" "" "" "" "" "" "" "" ""
	\set stanza = #"1. "
	Nel Si -- gno -- re io ti do la pa -- ce: pa -- ce~a te, pa -- ce~a te.
	Nel Si -- gno -- re io ti do la pa -- ce: pa -- ce~a te, pa -- ce~a te.
	Nel suo no -- me re -- ste -- re -- mo~u -- ni -- ti: pa -- ce~a te, pa -- ce~a te.
	Nel suo no -- me re -- ste -- re -- mo~u -- ni -- ti: pa -- ce~a te, pa -- ce~a te.
}

textii = \lyricmode {
	"" "" "" "" "" "" "" "" "" ""
	\set stanza = #"2. "
	E se an -- che non ci co -- no -- scia -- mo: pa -- ce~a te, pa -- ce~a te.
	E se an -- che non ci co -- no -- scia -- mo: pa -- ce~a te, pa -- ce~a te.
	Lui co -- no -- sce tut -- ti~i no -- stri cuo -- ri: pa -- ce~a te, pa -- ce~a te.
	Lui co -- no -- sce tut -- ti~i no -- stri cuo -- ri: pa -- ce~a te, pa -- ce~a te.
}

textiii = \lyricmode {
	"" "" "" "" "" "" "" "" "" ""
	\set stanza = #"3. "
	Se~il pen -- sie -- ro non è sem -- pre~u -- ni -- to: pa -- ce~a te, pa -- ce~a te.
	Se~il pen -- sie -- ro non è sem -- pre~u -- ni -- to: pa -- ce~a te, pa -- ce~a te.
	Sia -- mo~u -- ni -- ti nel -- la stes -- sa fe -- de: pa -- ce~a te, pa -- ce~a te.
	Sia -- mo~u -- ni -- ti nel -- la stes -- sa fe -- de: pa -- ce~a te, pa -- ce~a te.
}


textiv = \lyricmode {
	"" "" "" "" "" "" "" "" "" ""
	\set stanza = #"4. "
	E se no -- i non giu -- di -- che -- re -- mo: pa -- ce~a te, pa -- ce~a te.
	E se no -- i non giu -- di -- che -- re -- mo: pa -- ce~a te, pa -- ce~a te.
	Il Si -- gno -- re ci vor -- rà sa -- lva -- re: pa -- ce~a te, pa -- ce~a te.
	Il Si -- gno -- re ci vor -- rà sa -- lva -- re: pa -- ce~a te, pa -- ce~a te.
}


harmonies = \chordmode {
	c2 | c2 f4 f4:m | c1 |
	c2 f2 | c1 | f1 | c1
	a2:m f2 | c1 | a2 f4 g4 | c1
	c2 f2 | c1 | f1 | c1
	c2 e2 | a2:m f2 | c2 f4 g4 | c2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
			\addlyrics { \textiv }
		>>
	>>
}

%\paper{
%	system-system-spacing = #'((basic-distance . 17) 
%       (minimum-distance . 14) 
%       (padding . 1) 
%       (stretchability . 0))
%}
