\version "2.14.2"

melody = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 96
	\relative c' {
		s1 s1 s1 s1 \bar "||" \break

		\repeat volta 2 {
			r8^\markup{\italic refrain} d8 a'8 a8 a8 g8 f8 d8( | d8) a'8 g8 e8( e4) f8 d8( | 
		}
		\alternative {
			{ d1) }
			{ d1\repeatTie | r1 }
		}

		\bar "||" \break

		r8^\markup{\italic couplet} f8 c'8 c8 c8 bes8 a8 f8( | f8) c'8 a8 f8( f8) c'8 bes8 a8( | a1) | r1
		r8 f8 c'8 c8 c8 bes8 a8 f8 | r8 c'8 a8 f8( f8) c'8 bes8 a8( | a1) \bar "||"
	}
}

melody_ii = {
	\relative c' {
		s1*10

		r8 d8 d8 d8( d8) d8 d8 c8( | c1) s1*2
		r8 d8 d8 d8( d8) d8 d8 e8( | e1)
	}
}

violin_i = {
	\clef treble 
	\key f\major
	\time 4/4

	\relative c' {
		r4^\markup{\italic intro} f8 e8 f8 d4. | r4 f8 e8 d4 cis4 |
		r4 f8 e8 f8 d4. | r4 f8 e8 d4 cis4 |
		
		s1*3
		
		r4 f8 e8 f8 d4. | r4 f8 e8 d4 cis4 |

		f1 f1 f1 f1 f1 f1 e1
	}
}

violin_ii = {
	\relative c'' {
		s1*2
		r4 a8 g8 a8 f4. | r4 a8 g8 f4 e4 |
		
		s1*5

		c1 d1 c1 d1 c1 d1 cis1
	}
}

violin_iii = {
	\clef bass
	\key f\major
	\time 4/4

	\relative c' {
		s1*4

		a8 a a a  a a a a | bes bes bes bes a a a a | a a a a bes bes a a
			a8 a a a  a a a a | bes bes bes bes a a a a	
	}
}

texti = \lyricmode {
	\set stanza = #"1., 3. "
	Sei -- gneur, prends pi -- tié de nous,
	prends pi -- tié de nous.

	"" % trick to solve problem around repeatTie

	\set stanza = #"1. "
	Toi le Dieu qui nous par -- donnes
	prends pi -- tié! Prends pi -- tié! 
	Toi le frère qui nous con -- sole
	prends pi -- tié! Prends pi -- tié!
}

textii = \lyricmode {
	\set stanza = #"2. "
	Ô Christ, prends pi -- tié de nous,
	prends pi -- tié de nous.

	"" % trick to solve problem around repeatTie

	\set stanza = #"2. "
	Toi le Christ, no -- tre Lu -- mière.
	Prends pi -- tié! Prends pi -- tié! 
	Toi Jé -- sus qui nous li -- bères.
	Prends pi -- tié! Prends pi -- tié!
}

harmonies = \chordmode {
	d2:m f2 | bes a2
	d2:m f2 | bes a2

	d2:m f2 | bes2 a2 | d2:m bes4 a4
		d2:m f2 | bes2 a2
	
	f1 bes1 f1 bes1
	f1 bes1 a1
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			%\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"chant"
		  	\set Staff.shortInstrumentName = #"chant"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
			\new Voice { \transpose c c { \voiceOne \melody } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\new Voice { \transpose c c { \voiceTwo \melody_ii } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin"
		  	\set Staff.shortInstrumentName = #"violin"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.5
			\new Voice { \transpose c c { \voiceOne \violin_ii } }
			\new Voice { \transpose c c { \voiceTwo \violin_i } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violoncelle"
		  	\set Staff.shortInstrumentName = #"violoncelle"
			\set Staff.midiInstrument = #"cello"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.5
			\new Voice { \transpose c c { \violin_iii } }
		>>

	>>
}
