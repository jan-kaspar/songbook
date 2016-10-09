#(set-global-staff-size 17)

% in \paper section
%	system-system-spacing = #'((basic-distance . 20) 
%       (minimum-distance . 14) 
%       (padding . 1) 
%       (stretchability . 60))

\paper{
	indent = 0\cm
	ragged-right = ##f
	line-width = 17\cm
	paper-height = 27\cm

  	#(define fonts
    (make-pango-font-tree "URW Palladio L"
                          "URW Palladio L"
                          "Luxi Mono"
                           (/ 17 17)))
}

\header{
%	title="$song"
%	composer="$group"
	tagline=""
}

CommonChordExceptionList = {
  <c e g b>1-\markup { \super "maj7" }
  <c e gis>1-\markup { \super "5+" }
  <c es ges>1-\markup { \super "dim" }
}

CommonChordExceptions = #( append
  ( sequential-music-to-chord-exceptions CommonChordExceptionList #t)
  ignatzekExceptions)

CommonChordSettings = {
	\set chordNameExceptions = #CommonChordExceptions
	%\germanChords
	%\semiGermanChords
	\set chordChanges = ##t
}

\include "$input"

\score {
	\FullLayout
	\layout {
		\context {
			\Staff \RemoveEmptyStaves
			\override VerticalAxisGroup.remove-first = ##t
		}
	}
	\midi { }
}

%    \new Lyrics \with { alignAboveContext = "staff" } {
%      \lyricsto "melody" {
%        Here are the words
%      }
%    }
