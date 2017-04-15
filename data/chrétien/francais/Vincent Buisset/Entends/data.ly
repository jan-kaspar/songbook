\version "2.14.2"

melody = {
	\clef treble
	\key bes\major
	\time 4/4
	\tempo 4 = 65
	\relative c'' {
	  	g4^\markup{\italic refrain} g2. | r4 g8 a8 bes8 a8 g8 ges8 |
		g2 r4 g8 a8 | bes2 bes8 c8 a4 \bar "||"
	  	g4 g2. | r4 g8 a8 bes8 a8 g8 ges8 |
		g2^\markup{\italic bridge} s2 | s1 \bar "|."
	}
}

base = {
	\clef bass
	\key bes\major
	\time 4/4
	\relative c' {
		g4 g4 es4 es4 | c4 c4 d4 d4 |
		g4 g4 es4 es4 | c2 d2 |
		g4 g4 es4 es4 | c4 c4 d4 d4 |
		g4 g4 es4 es4 | c2 d2 |
	}
}

flute_i = {
	\key bes\major
	\time 4/4
	\relative c'' {
		r8 g8 bes8 g8 r8 g8 bes8 g8 | r8 g8 bes8 g8 r8 d'8 g8 d8 |
		r8 g,8 bes8 g8 r8 g8 bes8 g8 | r8 g8 bes8 g8 r8 d'8 g8 d8 |
		r8 g,8 bes8 g8 r8 g8 bes8 g8 | r8 g8 bes8 g8 r8 d'8 g8 d8 |
		d4 c8 bes4 g8 d'8 bes8 | g4 d'8 c8 a2 |
	}
}

flute_ii = {
	\key bes\major
	\time 4/4
	\relative c'' {
		r8 g8 bes8 g8 r8 g8 bes8 g8 | r8 g8 bes8 g8 r8 fis8 c'8 d8 |
		r8 g,8 bes8 g8 r8 g8 bes8 g8 | r8 g8 bes8 g8 r8 fis8 c'8 d8 |
		r8 g,8 bes8 g8 r8 g8 bes8 g8 | r8 g8 bes8 g8 r8 fis8 c'8 d8 |
		bes4 a4 g4 f4 | es4 d8 c8 d2 |
	}
}

violin_i = {
	\key bes\major
	\time 4/4
	\relative c'' {
		g1 | g2. a4 | bes1 | c2 a2 |
		bes4 d4 es2( | es2) d2 | d4 c4 bes4 a4 | g4 f8 es8 g4 fis4 |
	}
}

violin_ii = {
	\key bes\major
	\time 4/4
	\relative c''' {
		bes1 | bes2. a4 | bes1 | bes2. a4 |
		d,4 bes4 es4 bes4 | c2. bes8 a8 |
		g4. a8 bes4 d4 | es4 d2. |
	}
}


%----------------------------------------------------------------------------------------------------

second = {
	\key bes\major
	\time 4/4
	\relative c'' {
		s1 s1 s1 s1
		s1 s1
		d8 g,8 c8 g8 g8 g8 d'8 c8 | g8 g8 d'8 c8 a2
	}
}

text = \lyricmode {
	En -- tends nos pri -- ères mon -- ter vers Toi, fais gran -- dir no -- tre foi.
	En -- tends nos pri -- ères mon -- ter vers Toi.
}

harmonies = \chordmode {
	g2:m es2 c2:m d2
	g2:m es2 c2:m d2
	
	g2:m es2 c2:m d2
	g2:m es2 c2:m d2
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"chant"
		  	\set Staff.shortInstrumentName = #"chant"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
			\new Voice { \transpose c c { \melody } }
			\addlyrics { \text }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"basse"
		  	\set Staff.shortInstrumentName = #"basse"
			\set Staff.midiInstrument = #"contrabass"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #1.0
			\new Voice { \transpose c c { \base } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"flutes"
		  	\set Staff.shortInstrumentName = #"flutes"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
			\new Voice { \transpose c c { \voiceOne \flute_i } }
			\new Voice { \transpose c c { \voiceTwo \flute_ii } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin 1"
		  	\set Staff.shortInstrumentName = #"violin 1"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.6
			\new Voice { \transpose c c { \violin_i } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin 2"
		  	\set Staff.shortInstrumentName = #"violin 2"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.6
			\new Voice { \transpose c c { \violin_ii } }
		>>

	>>
}
