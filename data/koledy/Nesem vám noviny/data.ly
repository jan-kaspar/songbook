\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 70
	\clef treble
	\key d\major
	\time 3/4
	\relative c'' {
	  	\repeat volta 2 {
			a4 a8( fis8) b8( g)
			a4 a8( fis8) b8( g)
			a4 fis8( a8) e8( fis8) | d2 r4
		}
		\break

	  	\repeat volta 2 {
			d4 fis8 d8 fis8 a8 | d,4 fis8 d8 e8 a,8 |
		}

		a'4 fis8( a8) e8( fis8) | d2 r4
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
	  	\repeat volta 2 {
			fis4 fis8( d8) g8( e8) |
			fis4 fis8( d8) g8( e8) |
			fis4 d8( fis8) cis4 | d2 s4
		}

		s2. s2.
		fis4 d8( fis8) cis4 | d2 s4
	}
}

ThirdVoice = {
	\clef bass 
	\key d\major
	\time 3/4
	\relative c {
	  	\repeat volta 2 {
			fis2 g4 | fis2 g4 | fis2 e4 | fis2 r4 |
		}

%		\transpose f' d' {
%		\relative c'{
%		  c4 d4 c4 | d4 c4 bes4 |
%		  c4 d4 c4 | d4 c4 bes4 |
%		  a4 c2 | c2 r4
%		}
%	  	}

	  	\repeat volta 2 {
			a2. | fis4 gis4 e4 | 	
		}

		fis2 e4 | fis2 r4
	}
}

FourthVoice = {
	\relative c {
		d2. | d2. | d2 a4 | d2 s4 |
		d2. | d4 b4 a4 | 
		d2 a4 | d2 |
	}
}

text = \lyricmode {
  \set stanza = #"1. "
	Ne -- sem vám no -- vi -- ny, po -- slou -- chej -- te,
	Slyš -- te je pil -- ně a ne -- o -- myl -- ně,
	roz -- jí -- mej -- te!
}

text_rep = \lyricmode {
	z_bet -- lém -- ské kra -- ji -- ny, po -- zor dej -- te.
	slyš -- te je pil -- ně a ne -- o -- myl -- ně,
}

harmonies = \chordmode {
	d2 g4 d2 g4 d2 a4:7 d2.
	d2. d4 e4:7 a4:7
	d2 a4:7 d2.
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
    			{ \voiceTwo \transpose c' c' { \SecondVoice } }
		>>

		\new Staff <<
		  	\set Staff.midiInstrument = #"cello"
  			\new Voice = "ThirdVoice"
    			{ \voiceOne \transpose c' c' { \ThirdVoice } }
  			\new Voice = "FourthVoice"
    			{ \voiceTwo \transpose c' c' { \FourthVoice } }
		>>
	>>
}

TextBelow = \markup{}
