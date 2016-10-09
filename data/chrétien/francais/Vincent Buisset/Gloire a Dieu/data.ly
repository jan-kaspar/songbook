\version "2.14.2"

melody = {
	\clef treble
	\key fis\major
	\time 2/4
	\tempo 4 = 124
	\relative c' {
		r8^\markup{\italic couplet} fis8 fis fis | fis4. fis8 | gis fis e e~ | e2 | r4 dis4 | dis8 e4 fis8~ | fis2~ | fis2 |\break
		r8 fis8 fis fis | fis fis4 fis8 | gis fis e fis~ | fis e4. | r4 dis8 dis | dis dis e fis~ | fis2 | r2 \bar "|."
	}
}

flute_i = {
	\key fis\major
	\relative c'' {
		s1*4
		cis2~ | cis2~ | cis2 | b4 gis4 | fis2~ | fis2~ | fis2~ | fis2
	} 
}

violin_i = {
	\key fis\major
	\relative c' {
		fis2~ | fis2 | b | gis | fis~ | fis | b2 | ais2 |
		fis2~ | fis2 | b | gis | b~ | b | a2~ | a2 |
	}
}


text = \lyricmode {
	Nous te lou -- ons, nous te bé -- nis -- sons,
	nous t’a -- do -- rons. 
	Nous te glo -- ri -- fions, nous te ren -- dons grâ -- ce,
	pour ton im -- men -- se gloire.
}

harmonies = \chordmode {
	fis1:m e b fis2:sus4 fis2 |
	fis1:m e b d |
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
			%\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.9
  			\new Voice
    			{ \melody }
			\addlyrics { \text }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin"
			\set Staff.shortInstrumentName = #"violin"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.6
  			\new Voice { \violin_i }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"flute"
			\set Staff.shortInstrumentName = #"flute"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.8
  			\new Voice { \flute_i }
		>>

	>>
}
