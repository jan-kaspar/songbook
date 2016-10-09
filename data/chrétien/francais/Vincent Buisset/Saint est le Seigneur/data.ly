\version "2.14.2"

choir = {
	\clef treble
	\key d\major
	\time 4/4
	\tempo 4 = 104
	\relative c' {
		\repeat volta 2 {
			fis4^\markup{\italic refrain} fis4 fis4 e8 cis8 | e8 fis16 fis16( fis2.) |
			fis4 fis4 fis4 e8 cis8 | e8 fis16 fis16( fis2.) |
			fis4 fis4 fis4 e8 cis8 | e8 fis16 fis16( fis2.) |
		}
		
		\alternative {
  			{ r8 fis8 a8 b8 cis8 b8 b8 cis8 }
			{ r8 fis,8 a8 b8 b8 a8 b8 a8( \bar "||" \break a1^\markup{\italic couplet}) }
		}

		r2 r8 a8 b8 a8( | a1) |
		r2 r8 a8 b8 a8( | a1) |
		r2 r8 a8 b8 a8( | a2) r8 a8 b8 a8( | a1) |
	}
}

solo = {
	\clef treble
	\key d\major
	\time 4/4
	\relative c'' {
		s1*8
		r4 r8 a8 a4 gis8 fis8 | gis8 a8( a2.) |
		r8 a8 a8 a4 gis8 fis8 d8( | d1) |
		r4 r8 a'8 a8 a8 gis8 fis8 | gis4 a8 a8( a2 | a2) r8 a8 b8 a8( | a1) |
	}
}

violin_i = {
	\clef treble
	\key d\major
	\time 4/4
	\relative c {
		\ottava #-1
		fis16 fis16 fis16 fis16 fis16 fis16 e8 fis16 fis16 fis16 fis16 fis16 fis16 e8
		fis16 fis16 fis16 fis16 fis16 fis16 e8 fis16 fis16 fis16 fis16 fis16 fis16 e8
		fis16 fis16 fis16 fis16 fis16 fis16 e8 fis16 fis16 fis16 fis16 fis16 fis16 e8
		fis16 fis16 fis16 fis16 fis16 fis16 e8 fis16 fis16 fis16 fis16 fis16 fis16 e8
		fis16 fis16 fis16 fis16 fis16 fis16 e8 fis16 fis16 fis16 fis16 fis16 fis16 e8
		fis16 fis16 fis16 fis16 fis16 fis16 e8 fis16 fis16 fis16 fis16 fis16 fis16 e8
		fis2 e2
		fis2 e2
	}
}


harmonies = \chordmode {
	fis1*2 d1*2 b1*2
		d2 e2
		d2 e2
	fis1*2:m d1*2 b1*2 d1 e2:4 e2
}

text_choir = \lyricmode {
	Saint, saint, saint! Saint est le Sei -- gneur.
	Saint, saint, saint! Dieu de l’u -- ni -- vers
	Saint, saint, saint! Le ciel et la terre
	Sont rem --  -- plis de ta gloi -- re.
	Te ren -- dent gloire.
	
	Ho -- san -- na! 
	Ho -- san -- na! 
	Ho -- san -- na! 
	Ho -- san -- na! 
	Ho -- san -- na! 
}

text_solo_i = \lyricmode {
	\set stanza = #"1. "
	Le ciel et la ter -- re
	sont rem -- plis de ta Gloire.
	Ho -- san -- na au plus haut des cieux.
	Hos -- an -- na!
}

text_solo_ii = \lyricmode {
	\set stanza = #"2. "
	Bé -- ni soit ce -- lui qui vient
	au nom du Sei -- gneur.
	Ho -- san -- na au plus haut des cieux.
	Ho -- san -- na!
}


FullLayout = {
	\new StaffGroup <<
		\new ChordNames {
			\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"cheour"
		  	\set Staff.shortInstrumentName = #"choeur"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice
    			{ \choir }
			\addlyrics { \text_choir }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"solo"
		  	\set Staff.shortInstrumentName = #"solo"
			\set Staff.midiInstrument = #"voice oohs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice
    			{ \solo }
			\addlyrics { \text_solo_i }
			%\addlyrics { \text_solo_ii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin"
		  	\set Staff.shortInstrumentName = #"violin"
			\set Staff.midiInstrument = #"violin"
			%\set Staff.midiMinimumVolume = #0.0
	  		%\set Staff.midiMaximumVolume = #0.0
  			\new Voice { \violin_i }
		>>

%		\new Staff <<
%		  	\set Staff.instrumentName = #"basse"
%		  	\set Staff.shortInstrumentName = #"basse"
%			\set Staff.midiInstrument = #"contrabass"
%			\set Staff.midiMinimumVolume = #0.8
%	  		\set Staff.midiMaximumVolume = #1.0
%  			\new Voice
%    			{ \base }
%		>>

	>>
}
