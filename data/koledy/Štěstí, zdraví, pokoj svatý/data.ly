\version "2.14.2"

FirstVoice = {
  	\tempo 2 = 90
	\clef treble
	\key d\major
	\time 4/4
	\relative c'' {
		\repeat volta 2 {
			a4 a4 a4 b4 | g4 g4 g4 a4 | fis4 fis4 e4 e4 | d2 r2
		}\break
		\repeat volta 2 {
			fis4 fis4 fis4 e4 | fis4 b4 a2 |
		}
		a4 a4 a4 b4 | g4 g4 g4 a4 | fis4 fis4 e4 e4 | d2 r2
		\bar "|."
	}
}

SecondVoice = {
	\relative c'' {
		a4 a4 a4 bes4 | g4 g4 g4 a4 | f4 f4 e4 e4 | f2 s2 |
		f4 f4 f4 e4 | f2 a2 |
		a4 a4 a4 bes4 | g4 g4 g4 a4 | f4 f4 e4 e4 | f2 s2 |
	}
}

ThirdVoice = {
	\clef bass
	\key f\major
	\time 4/4
	\relative c' {
%		c4 d4 c4 bes4 | c4 d4 c4 bes4 |
%		c4 d4 c4 bes4 | a2 r2
%		c4 d4 c4 bes4 | c4 d4 c4 bes4 |
%		c4 d4 c4 bes4 | a2 r2
	}
}

FourthVoice = {
	\relative c {
		f1 | e1 | f2 c2 | f2 r2 |
		c'1( | c4) bes4 f2 |
		f1 | e1 | f2 c2 | f2 r2 |
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Štěs -- tí zdra -- ví, po -- koj sva -- tý vin -- šu -- je -- me vám,
	Zda -- le -- ka se bé -- ře -- me,
	co jest se nám při -- ho -- di -- lo v_mě -- stě Bet -- lé -- mě.
}

text_rep = \lyricmode {
	nej -- prv pa -- nu hos -- po -- dá -- ři, pak va -- šim dít -- kám!
	no -- vi -- nu vám ne -- se -- me,
}

harmonies = \chordmode {
	d2. g4 | a1:7 | d2 a2:7 | d1
	d2. a4:7 | d4 a4:7 d2 |
	d2. g4 | a1:7 | d2 a2:7 | d1
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
    			{ \voiceOne \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
			\addlyrics { \text_rep }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose f' d' { \SecondVoice } }
		>>

		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \transpose f' d' { \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \transpose f' d' { \FourthVoice } }
		>>
	>>
}
