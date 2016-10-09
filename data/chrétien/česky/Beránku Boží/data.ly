\version "2.14.2"

voice_i = {
	\clef treble
	\key d\major
	\time 4/4
	\tempo 4 = 80
	\relative c'' {
		a8 a4 a8 a8 a4 a8 | b8 a8 g8 fis8 e8 fis8 g8 e8 | \break
		d8 d8 e8 fis8 e4.( d8) | d2 r2 | \break

		a'8 a4 a8 a8 a4 a8 | b8 a8 g8 fis8 e8 fis8 g8 e8 | \break
		d8 d8 e8 fis8 e4.( d8) | d2 r2 | \break

		s1*2 s2 \bar "||" \break
	}

	\key f\major
	\relative c'' {
		% refrain
		a8 a4 a8 a8 a4 a8 | bes8 a8 g8 f8 e8 f8 g8 e8 | \break
		d2 d4 d4 | d2 d2 | d2 d4 d4 | d2 d2 \break
	}
}

voice_ii = {
	\clef treble
	\key d\major
	\time 4/4
	\relative c'' {
		s1*2

		a8 a4 a8 a8 a4 a8 | b8 a8 g8 fis8 e8 fis8 g8 e8 |
		d8 d8 e8 fis8 e4.( d8) | d2 r2 |
		
		a'8 a4 a8 a8 a4 a8 | b8 a8 g8 fis8 e8 fis8 g8 e8 |
		d8 d8 e8 fis8 e2( | e2) d2 |
	}
	
	\time 2/4
	r2

	\time 4/4
	\key f\major
	\relative c'' {
		% refrain
		a8 a4 a8 a8 a4 a8 | bes8 bes8 bes8 bes8 a8 a8 a8 a8 | \break
		bes2 bes4 bes4 | a2 a2 | g2 g4 g4 | fis2 fis2 \break
	}
}


harmonies = \chordmode {
	d2 a2 g2 a2 | d2 a2 g2 a2
	d2 a2 g2 a2 | d2 a2 g2 a2
	d2 e2:m a2 d2 d2

	d2:m d2:m7 bes2 a2 g1:m d:m g d
}

text_i = \lyricmode {
	Be -- rán -- ku Bo -- ží, Ty, kte -- rý sní -- máš hří -- chy svě -- ta,
	smi -- luj se nad ná -- mi.

	Be -- rán -- ku Bo -- ží, Ty, kte -- rý sní -- máš hří -- chy svě -- ta,
	smi -- luj se nad ná -- mi.
	
	Be -- rán -- ku Bo -- ží, Ty, kte -- rý sní -- máš hří -- chy svě -- ta,
	da -- ruj nám po -- koj, da -- ruj nám po -- koj.
}

text_ii = \lyricmode {
	Be -- rán -- ku Bo -- ží, Ty, kte -- rý sní -- máš hří -- chy svě -- ta,
	smi -- luj se nad ná -- mi.

	Be -- rán -- ku Bo -- ží, Ty, kte -- rý sní -- máš hří -- chy svě -- ta,
	smi -- luj se nad ná -- mi.
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 1"
		  	\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice { \voice_i }
			\addlyrics { \text_i }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 2"
		  	\set Staff.shortInstrumentName = #"voix 2"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice { \voice_ii }
			\addlyrics { \text_ii }
		>>

	>>
}
