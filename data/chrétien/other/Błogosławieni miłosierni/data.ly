\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 120
	\clef treble
	\key e\major
	\time 4/4
	\relative c' {
	  {
		  r1*4
    
    	  % verse 1
    	  r2^\markup{\italic {couplet - solistes}} cis4 cis8 dis8 | e4 e8 dis8 cis4 gis8( b8 | b4) b2. | d4 d8 d8 cis8( b4 a8) | \break
		  a8( b8 b4) e8 e4 e8 | fis4 fis4 dis4 cis8 b8( | cis4) cis2. |
		  cis4 e4 fis8( e4) dis8 | cis1 |

		  r1 r1 r1\break

    	  % verse 2
    	  r4^\markup{\italic {couplet - solistes}} r8 cis8 cis8 dis4 e8~ | e4 e8 dis8 ~ dis8 cis8 gis8 b8 ~ | b2
		  r4 r8 cis8 | d4 d8 cis8 ~ cis8 b8( a8) b8 ~ | b4 r8 cis8 e8 e4 fis8~ | fis4 fis8 dis8 ~ dis8 cis8( b8) cis8 ~ | cis2
		  r4 r8 cis8 | cis4 e8 fis8 ~ fis8 e8 fis8 gis8 ~ | gis1 | \partial 2 r2

    	  % refrain
		  \repeat volta 2 {
		    \partial 2 \tuplet 3/2 {gis4 ^\markup{\italic {refrain - tous}} gis4 fis4} | gis2( gis8 a8 gis4) |
		    fis4. b4( a8) a8( gis8) | gis2( ~ gis8 fis8 e8 dis8) |
		    e2 r8 e8 e16 e16 e8~ | e8 b2 e4 e8 | fis2 fis8( e8) dis8( b8) | b8( cis4) cis8 ~ cis2 ~ | \partial 2 cis2
		  }
	  }
	}
}

GuitarSolo = {
  	\tempo 4 = 120
	\clef treble
	\key e\major
	\time 4/4
	\relative c'' {
	  {
    	  gis8^\markup{\italic {guitar solo}} fis8 gis8 b8 ~ b4 gis8 fis8 | gis8 b4. b4 cis4 | gis1 ~ | gis2 gis8 fis8 fis4
		  r1 r1 r1 r1
		  r1 r1 r1 r1
    	  gis8^\markup{\italic {guitar solo}} fis8 gis8 b8 ~ b4 gis8 fis8 | gis8 b4. b4 cis4 | gis1 ~ | gis2 gis8 fis8 fis4
	  }
	}
}

emphasize = {
%  \override Lyrics.LyricText.font-shape = #'italic
  \override Lyrics.LyricText.font-series = #'bold
}

normal = {
%  \revert Lyrics.LyricText.font-shape
  \revert Lyrics.LyricText.font-series
}

texti = \lyricmode {
	\set stanza = #"1. "
	Wzno -- szę swe o -- czy ku gó -- rom, skąd
	przyj -- dzie mi po -- moc;
	po -- moc od Pa -- na, wszak Bo -- giem On
	mi -- ło -- sier -- nym jest!

	\set stanza = #"2. "
	When we are lost, He search -- es for us,
	to hold us in His arms,
	His ho -- ly Blood will heal our wounds,
	to breathe new life in -- to us!

	\set stanza = #"R. "
	\emphasize
	Bło -- go -- sła -- wie -- ni mi -- ło -- sier -- ni,
	al -- bo -- wiem o -- ni mi -- ło -- sier -- dzia dos -- tą -- pią!
}


harmonies = \chordmode {
    cis1:m cis1:m e1 e1
	cis1:m a1 e1 d2 a2 e1 b2:sus4 b2 fis1:m a2 b2
	cis1:m cis1:m e1 e1
	cis1:m a1 e1 d2 a2 e1 b2:sus4 b2 fis1:m a2 b2 cis2:sus4 cis2 cis1
	e1 b1 cis1:m a1 e1 b1 a1 a1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"guitar"
		  	\set Staff.shortInstrumentName = #"guitar"
			\set Staff.midiInstrument = #"distorted guitar"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "GuitarSolo" { \transpose c c { \GuitarSolo } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix"
		  	\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \FirstVoice } }
			\addlyrics { \texti }
		>>
	>>
}

\paper{
	system-system-spacing = #'((basic-distance . 17) 
       (minimum-distance . 14) 
       (padding . 1) 
       (stretchability . 0))
}
