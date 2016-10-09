\version "2.14.2"

melody = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 125
	\relative c' {
		s1*8 \bar "||" \break

		d2^\markup{\italic refrain} e2 | f2 a4 g4( | g2) r4 f4 | f4 e4 d4 cis4 | d2 e2 | f4 g4 a4 g4( | g1) | r1 
		d2 e2 | f2 a4 g4( | g2) r4 f4 | f4 e4 d4 cis4 | d2 e2 | f4 g4 a4 g4( | g1) | r1 
			\bar "||" \break

		r4^\markup{\italic couplets} g4 a4 bes4 | bes4 a4 e4 a4( | a4) r4 g4 a4 | a4 g4 d2 |
		r4 g4 a4 bes4 | bes4 a4 e4 a4 | f2 g4 a4 | a4 g4 d2 |
		r4 d4 e4 f4 | f4 e4 d4 a4( | a4) d4 e4 f4 | f4 e4 d4 cis4 \bar "|."
	}
}

piano = {
	\clef treble 
	\key f\major
	\time 4/4

	\relative c'' {
		d2^\markup{\italic intro} a2 | bes1 | d2 bes2 | g2 a2 |
		d2 a2 | bes1 | d2 bes2 | g2 a2 |

		d4 d4 f4 d4 | d d f d | d d g d | e e a e |
		d4 d4 f4 d4 | d d f d | d d g d | c c e c |
		d4 d4 f4 d4 | d d f d | d d g d | e e a e |
		d4 d4 f4 d4 | d d f d | d d g d | c c e c |

		g2 bes | a e | f1 d1 |
		g2 bes | a e | f1 d1 |
		g2 bes | a1 | f2 g2 | e1
	}
}

text_i = \lyricmode {
	Sei -- gneur, me voi -- ci!
	Que dois je fai -- re pour ac -- cueil -- lir ta Vie?
	Sei -- gneur, me voi -- ci!
	Que dois je fai -- re pour vi -- vre de l’Es -- prit?
	
	\set stanza = #"1. "
	Tu sais de quoi je suis fait, Tu con -- nais mon coeur,
	Tu per -- ces de loin mes pen -- sées, Tu en -- tends mes peurs,
	Tu vois ma vie toute en -- tière.  De Ton a -- mour, Tu m’en -- serres.
}

text_ii = \lyricmode {
	_ _ _ _  _ _ _ _  _ _ _ _ _ _ _ _
	_ _ _ _  _ _ _ _  _ _ _ _ _ _ _ _

	\set stanza = #"2. "
	Tu po -- ses sur moi ta main et je ne crains rien.
	Je peux m’en -- fuir loin de toi, "" Tu es tou -- jours là.
	Qu’im -- por -- te la té -- nè -- bre, Ton a -- mour est lu -- miè -- re.
}

text_iii = \lyricmode {
	_ _ _ _  _ _ _ _  _ _ _ _ _ _ _ _
	_ _ _ _  _ _ _ _  _ _ _ _ _ _ _ _

	\set stanza = #"3. "
	Mon â -- me tu la con -- nais, c’est toi qui m’as fait.
	Mon em -- bry -- on tu le voy -- ais, Tu m’as fa -- çon -- né
	Ma vie est ton my -- stè -- re. Je te la donne, ô Pè -- re.
}

harmonies = \chordmode {
	d1:m bes1 g1:m a1 d1:m bes1 g1:m a1
	
	d1:m bes1 g1:m a1 d1:m bes1 g1:m c1
	d1:m bes1 g1:m a1 d1:m bes1 g1:m c1

	g1:m a1 d1:m g1
	g1:m a1 d1:m g1
	g1:m  d1:m bes1 a1
}


FullLayout = {
	\new StaffGroup <<
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
  			\new Voice { \melody }
			\addlyrics { \text_i }
			\addlyrics { \text_ii }
			\addlyrics { \text_iii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"piano"
		  	\set Staff.shortInstrumentName = #"piano"
			\set Staff.midiInstrument = #"acoustic grand"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
  			\new Voice { \piano }
		>>

	>>
}
