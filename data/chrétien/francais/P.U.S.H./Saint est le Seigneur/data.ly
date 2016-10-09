\version "2.14.2"

melody = {
	\clef treble
	\key e\major
	\time 4/4
	\tempo 4 = 91
	\relative c' {
		s1*6

		e8^\markup{\italic {partie A}} e16 e16( e16) dis16 e8( e4) r4 |
		e8 e16 e16( e16) dis16 e8( e4) r4 |
		e8 e16 e16( e16) dis16 e8( e4) e8 e8 | e8. dis16( dis8) e8( e4) r4

		e8 e16 e16( e16) dis16 e8( e4) r4 |
		e8 e16 e16( e16) dis16 e8( e4) r4 |
		e8 e16 e16( e16) dis16 e8( e4) e8 e8 | e8. dis16( dis8) e8 r4 gis8 b8 \bar "||" \break

		b2^\markup{\italic {partie B}} r4 gis8 a8 | b2 r4 gis8 b8 | b8. b16( b8) b8 b8.( a16 a8) gis8 | fis2 r4 gis8 b8 |
		b2 r4 gis8 a8 | b2 r4 gis8 b8 | b8. b16( b8) b8 b8.( a16 a8) gis8 | fis2 r4 r8 gis8 |  \bar "||" \break

		fis8.^\markup{\italic {partie C}} e16( e8) e8 e4 e8 e8 | fis8. gis16( gis8) a8 gis4 r8 gis8 |
		fis8. e16( e8) e8 e4 r8 e8 | fis8. e16( e8) dis8 e8 r4 gis8 |

		fis8. e16( e8) e8 e4 e8 e8 | fis8. gis16( gis8) a8 gis4 r8 gis8 |
		fis8. e16( e8) e8 e4 r8 e8 | fis8. e16( e8) dis8 e2 \bar "|."
	}
}

piano = {
	\clef treble
	\key e\major
	\time 4/4

	\relative c' {
		e4^\markup{\italic {intro}} e4 dis8 e8 dis8 b8 | e4 e4 dis8 e8 dis8 b8|
		
		e4 e4 dis8 e8 dis8 b8 | e4 e4 dis8 e8 dis8 b8 | 
		e4 e4 dis8 e8 dis8 b8 | e4 fis8( fis4.) r4 \bar "||" \break
	}
}

flute = {
	\clef treble 
	\key e\major
	\time 4/4

	\relative c' {
		s1*2
		e4 b'8 fis8( fis4.) e8 | b2 r2 |
		e4 b'8 fis8( fis4.) e8 | fis2 r2 |
	}
}

text = \lyricmode {
	Saint est le Sei -- gneur, Saint est le Sei -- gneur,
	Saint est le Sei -- gneur Dieu de l’u -- ni -- vers.

	Saint est le Sei -- gneur, Saint est le Sei -- gneur,
	Saint est le Sei -- gneur Dieu de l’u -- ni -- vers.

	Ho -- san -- na, ho -- san -- na, ho -- san -- na au plus haut des cieux!
	Ho -- san -- na, ho -- san -- na, ho -- san -- na au plus haut des cieux!

	Le ciel et la terre sont rem -- plis de ta gloire.
	Bé -- ni soit Ce -- lui qui vient en ton Nom.

	Le ciel et la terre sont rem -- plis de ta gloire.
	Bé -- ni soit Ce -- lui qui vient en ton Nom.
}

harmonies = \chordmode {
	s1*2
	e2 a:2 e b:4 cis:m7 a:2 b1:4
	
	e2 a e b cis:m a b1
	e2 a e b cis:m a b1
	e2 a e b cis:m a b1
	e2 a e b cis:m a b1
	cis2:m a b1 cis2:m a b1
	cis2:m a b1 cis2:m a b1
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			%\override ChordNames.ChordName          #'color = #(x11-color 'red)
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
		  	\set Staff.instrumentName = #"piano"
		  	\set Staff.shortInstrumentName = #"piano"
			\set Staff.midiInstrument = #"acoustic grand"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice
    			{ \piano }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"flute"
		  	\set Staff.shortInstrumentName = #"flute"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
  			\new Voice { \flute }
  			%\new Voice { \voiceOne \flute_i }
			%\new Voice { \voiceTwo \flute_ii }
		>>

	>>
}
