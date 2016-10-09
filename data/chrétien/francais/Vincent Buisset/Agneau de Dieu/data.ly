\version "2.14.2"

melody = {
	\clef treble
	\key g\major
	\time 6/8
	\tempo 4 = 75
	\relative c'' {
		g4. fis4. | g4. fis4. | g4 fis8 e4 fis8 | g4 fis8 e4 dis8 | e2. | r2. | g4 fis8 e4 fis8 | g4. fis4. | \break
		g4. fis4. | g4. fis4. | g4 fis8 e4 fis8 | g4 fis8 e4 dis8 | e2. | r2. | g4 fis8 e4 fis8 | g4. r4. | \break
		g4. fis4. | g4. fis4. | g4 fis8 e4 fis8 | g4 fis8 e4 dis8 | e2. | r2. | g4 a8 a4 g8 | fis4. g4 fis8| \break
		e4. g4 fis8 | e4. g4 fis8 | e4. r4. | r4. g4 fis8 | e2. \bar "|."

	}
}

flute_i = {
	\key g\major
	\relative c''' {
		s2. | s2. | s2. | s2. | g4. fis4. | g4. e4. | e2. | e4. dis4. |
		e,4 b'8 g'4 b,8 | e,4 b'8 g'4 b,8 | a4 e'8 a4 e8 | b4 e8 fis4. |
		e,4 b'8 g'4 b,8 | e,4 b'8 g'4 b,8 | a4 e'8 a4 e8 | b4 e8 fis4. |

		%s2. | s2. | s2. | s2. |
		%e,16 e16 e16 g16 fis16 e16

		%g8 e8 g8 b8 g8 e8
	} 
}

flute_ii = {
	\key g\major
	\relative c''' {
		s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
		s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
		b4. a4. | b4. a4. | b4 a8 g4 a8 | b4 a8 g4 fis8 | g4. fis4. | g4. e4. | e2.
	}
}

violin_i = {
	\key g\major
	\relative c' {
		e2. e2. e2. | e4. dis4. | e2. e2. e2. | e4. dis4. |
		e2. e2. e2. | e4. dis4. | e2. e2. e2. | e4. dis4. |
		e2. e2. e2. | e4. dis4. | e2. e2. e2. | e2. %e2. e2. | dis2. | e2.
	}
}


text = \lyricmode {
	A -- gneau de Dieu qui en -- lè -- ves le pé -- ché du monde, prends pi -- tié de nous.
	
	Toi l'A -- gneau de Dieu qui en -- lè -- ves le pé -- ché du monde, prends pi -- tié de nous.
	
	L'A -- gneau de Dieu qui en -- lè -- ves le pé -- ché du monde,  don -- ne nous la paix.

	Toi l’A -- gneau! Toi l’A -- gneau! Toi l’A -- gneau! Toi l’A -- gneau!
}

harmonies = \chordmode {
	e2.:m c2. a2.:m b2.:7 | e2.:m c2. a2.:m b2.:7
	e2.:m c2. a2.:m b2.:7 | e2.:m c2. a2.:m b2.:7
	e2.:m c2. a2.:m b2.:7 | e2.:m c2. a2.:m b2.:7
	e2.:m c2. a2.:m b2.:7 | e2.:m
}


FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
			\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"chant"
			\set Staff.shortInstrumentName = #"chant"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice
    			{ \melody }
			\addlyrics { \text }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"flute 1"
			\set Staff.shortInstrumentName = #"flute 1"
			%\set Staff.midiInstrument = #"flute"
			\set Staff.midiInstrument = #"violin"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
  			\new Voice { \flute_i }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"flute 2"
			\set Staff.shortInstrumentName = #"flute 2"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
  			\new Voice { \flute_ii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin"
			\set Staff.shortInstrumentName = #"violin"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.6
  			\new Voice { \violin_i }
		>>

	>>
}
