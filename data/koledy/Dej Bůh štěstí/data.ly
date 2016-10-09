\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 80
	\clef treble
	\key d\major
	\time 2/4
	\relative c'' {
		a4 b4 a4 fis4 a4 fis4 e4 d4
		a'4 b4 a4 fis4 a4 fis4 e4 d4
		\break
		fis8 e8 fis8 g8 a4 d,4 fis8 e8 fis8 g8 a4 d,4
		a'4 b4 a4 fis4 a4 g8 fis8 e4 d4
		\bar "|."
	}
}

text = \lyricmode {
	Dej Bůh štěs -- tí to -- mu do -- mu, my zpí -- vá -- me ví -- me ko -- mu:
	Ma -- lé -- mu dě -- ťát -- ku, Kris -- tu Je -- zu -- lát -- ku,
	dnes v_Bet -- lé -- mě na -- ro -- ze -- né -- mu.
}

harmonies = \chordmode {
  d2 d2 d2 a4:7 d4
  d2 d2 d2 a4:7 d4
  d2 a4:7 d4
  d2 a4:7 d4
  d2 d2 d2 a4:7 d4
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
		>>
	>>
}

TextBelow = \markup{}
