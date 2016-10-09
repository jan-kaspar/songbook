\version "2.12.3"

voicei = {
	\key e\major
	\partial 16 b16
	\tempo 4 = 70
	\relative c {
		\repeat volta 2 {
			e'8. dis16 e8 dis8 e4 r8 cis16 dis16 | e8. dis16 e8 dis8 b2 |
			cis4 dis8 e8 e4 fis8 gis8 | gis4 fis8 e8 dis4. r8
		}
	}
}

voiceii = {
	\key e\major
	\relative c' {
		\partial 16 fis16
		\repeat volta 2 {
			gis8. gis16 gis8 gis8 a4 r8 a16 a16 | b8. b16 b8 gis8 fis2 |
			gis4 gis8 gis8 a4 a8 a8 | gis4 fis8 gis8 fis4. r8
		}
	}
}

voiceiii = {
	\key e\major
	\partial 16 b16
	\relative c {
		\repeat volta 2 {
			cis'8. cis16 cis8 cis8 cis4 r8 cis16 cis16 | b8. b16 b8 b8 b2 |
			cis4 cis8 cis8 cis4 cis8 cis8 | b4 b8 b8 b4. r8
		}
	}
}

text = \lyricmode {
	Sei -- gneur tu é -- tais mort, mais tu es res -- su -- sci -- té.
	Nous at -- ten -- dons ta ve -- nue dans la gloire.
}

harmonies = \chordmode {
	s16 cis2:m a e b cis:m a e b
}

FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 1"
		  	\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.7
  			\new Voice
    			{ \voicei }
			\addlyrics { \text }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 2, 3"
		  	\set Staff.shortInstrumentName = #"voix 2, 3"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice
    			{ \voiceOne \voiceii }
  			\new Voice
    			{ \voiceTwo \voiceiii }
		>>
	>>
}
