\version "2.14.2"

\include "predefined-guitar-fretboards.ly"

\paper{
	ragged-right = ##t
}

\storePredefinedDiagram #default-fret-table
                        \chordmode { d:m7 }
                        #guitar-tuning
                        #"x;x;o;2-3;1-1;1-2;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { e:dim }
                        #guitar-tuning
                        #"x;x;2-1;3-3;2-2;3-4;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { g:dim }
                        #guitar-tuning
                        #"x;x;2-1;3-3;2-2;3-4;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { a:dim }
                        #guitar-tuning
                        #"x;o;1-1;2-3;1-2;2-4;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { a:6 }
                        #guitar-tuning
                        #"x;o;2-1;2-2;2-3;2-4;"


ChordList = \chordmode{
  c c:7 c:maj \break
  cis:m7 \break
  d d:7 d:m d:m7 \break
  e e:7 e:m e:dim \break
  f f:m \break
  fis fis:7 fis:m fis:m7 \break
  g g:7 g:m g:dim \break
  a a:7 a:m a:5+ a:dim a:6 a:9 \break
  b b:m
}

FullLayout = {
<<
  	\override Score.BarNumber #'break-visibility = #'#(#f #f #f)

	\new ChordNames
	{
	  	\CommonChordSettings
		\ChordList
	}

	\new FretBoards
	{
	  	% for next Lilypond release
		%\override FretBoard.FretBoard.size = #'2
    	%\override FretBoard.fret-diagram-details.finger-code = #'in-dot
    	%\override FretBoard.fret-diagram-details.dot-color = #'white
		%\override FretBoard.fret-diagram-details.finger-code = #'in-dot
		\override FretBoards.FretBoard #'size = #'2
    	\override FretBoard
      		#'(fret-diagram-details finger-code) = #'in-dot
    	\override FretBoard
      		#'(fret-diagram-details dot-color) = #'white
		\ChordList
	}
>>
}
