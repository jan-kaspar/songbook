\version "2.14.2"

melody = {
	\clef treble
	\key as\major
	\time 4/4
	\tempo 4 = 120
	\relative c' {
		f2^\markup{\italic intro} f2 | f2 f4 f4 | f4 f4 f4 f4 | f2 r2 \bar "||" \break

		r4^\markup{\italic principal} r8 f8 g8 as8 g8 f8 | g1 | r4 r8 f8 g8 as8 g8 f8 | f1 |
		r4 r8 f8 g8 as8 g8 f8 | g4. f8( f4) g4 | as1

		r4 r8 f8 g8 as8 g8 f8 | g1 | r4 r8 f8 g8 as8 g8 f8 | f1 |
		r4 r8 f8 g8 as8 g8 f8 | g2 f4 g4 | as1 | g2. f8 g8 | as2( g2) | f2 r2 \bar "|."
	}
}

flute_i = {
	\clef treble 
	\key as\major
	\time 4/4

	\relative c'' {
		s1*11
		c4. bes8( bes4) as4 | c4. bes8( bes4) as4 | c4. bes8( bes4) as4 | as1 |
		c4. bes8( bes4) as4 | c4. bes8( bes4) as4 | as1 | g1 | as2 g2 | as2 r2
	}
}

base = {
	\clef bass
	\key as\major
	\time 4/4

	\relative c {
		s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
		f2. f4 | es2. es4 | d2. d4 | des2 es2 |
		f2. f4 | es2. es4 | des2. des4 | es1 | des2 es2 | f2 r2
	}
}


text = \lyricmode {
	Il est grand, le my -- stè -- re de la foi.
	
	Nous pro -- cla -- mons ta mort, Jé -- sus no -- tre Sei -- gneur.
	Nous cé -- lé -- brons ta ré -- sur -- rec -- tion.

	Et tu re -- viens en -- core, Jé -- sus no -- tre Sau -- veur.
	Ta gloire nous la ver -- rons, nous t'at -- ten -- dons, nous t'es -- pé -- rons!
}

harmonies = \chordmode {
	f1:m2 f1:2m/es f1:m2/d f2:m2/des es2
	f1:m2 f1:2m/es f1:m2/d f2:m2/des es2
	f1:m2 f1:2m/es f2:m2/des es2
	f1:m2 f1:2m/es f1:m2/d f2:m2/des es2
	f1:m2 f1:2m/es f1:m2/des es1
	f2:m2/des es2 f1:m2
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
  			\new Voice
    			{ \melody }
			\addlyrics { \text }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"flute"
		  	\set Staff.shortInstrumentName = #"flute"
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
  			\new Voice { \voiceOne \flute_i }
%			\new Voice { \voiceTwo \flute_ii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"basse"
		  	\set Staff.shortInstrumentName = #"basse"
			\set Staff.midiInstrument = #"contrabass"
			\set Staff.midiMinimumVolume = #0.8
	  		\set Staff.midiMaximumVolume = #1.0
  			\new Voice
    			{ \base }
		>>

	>>
}
