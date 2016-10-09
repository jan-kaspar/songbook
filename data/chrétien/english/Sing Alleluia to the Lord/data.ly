\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 66
	\clef treble
	\key es\major
	\time 4/4
	\relative c'' {
		g4 f8 es8 d8 c8 bes8 d8 | c2 r2 |
		g'4 f8 g8 bes8 g8 f8 g8 | g2 r2 |
		c4 d8 es8 d8( bes8) g4 | as4 bes8 c8 bes8( g8) es4 | g4 f8 es8 d8 c8 bes8 d8 | c2 r2
		\break
		g'4 f8 es8 d8 c8 bes8 d8 | c2 r2 |
		g'4 f8 g8 bes8 g8 f8 g8 | g2 r2 |
		c4 d8 es8 d8( bes8) g4 | as4 bes8 c8 bes8( g8) es4 | g4 f8 es8 d8 c8 bes8 d8 | c2 r2
		\bar "|."
	}
}

SecondVoice = {
	\clef treble
	\key es\major
	\time 4/4
	\relative c'' {
		s1 | g4 f8 es8 d8 c8 bes8 d8 | c2 r2 | g'4 g8 g8 b4 c8( d8) |
		c2 bes2 | as2 g2 | g4 g8 g8 bes8 bes8 g8 bes8 | c2 r2

		s1 | g4 f8 es8 d8 c8 bes8 d8 | c2 r2 | g'4 g8 g8 b4 c8( d8) |
		c2 bes2 | as2 g2 | g4 g8 g8 bes8 bes8 g8 bes8 | c2 r2
	}
}

violin = {
	\clef treble
	\key es\major
	\time 4/4
	\relative c'' {
		s1 s1 s1 s1 s1 s1 s1 s1
		es4 d8 c8 d8 c8 bes8 d8 | c2 r2
		es4 d8 es8 f8 es8 c8 es8 | d2 r2
		es4 f8 g8 f8 d8 bes4 | c4 d8 es8 d8 bes8 g4 |
		es'4 d8 c8 d8 c8 bes8 d8 | c2 r2
	}
}

VocalOne = {
	\clef treble
	\key d\major
	\time 4/4
	\relative c' {
		s1*8
		b2 a2 | b2 a2 | b2 a4( a8 b8) | cis1 | d2 cis2 | b2 a2 | b2 a2 | b2 r2
	}
}

VocalTwo = {
	\relative c' {
		s1*8
		d2 e2 | fis2 e2 | d2 e2 fis2 e2 |
		fis2 fis2 | g2 fis2 | d2 e2 | d2 r2
	}
}

texti = \lyricmode {
%  	\set stanza = #"1. "
%	Can -- ta_a -- le -- lu -- ya al Se -- ñor.
%	Can -- ta_a -- le -- lu -- ya al Se -- ñor.
%	Can -- ta_a -- le -- lu -- ya, can -- ta_a -- le -- lu -- ya,
%	Can -- ta_a -- le -- lu -- ya al Se -- ñor.
%
%  	\set stanza = #"2. "
%	Sing Al -- le -- lu -- ia to the Lord.
%	Sing Al -- le -- lu -- ia to the Lord.
%	Sing Al -- le -- lu -- ia, sing Al -- le -- lu -- ia,
%	sing Al -- le -- lu -- ia to the Lord.

%	Je -- sus is ri -- sen from the dead.
%	Je -- sus is ri -- sen from the dead.
%	Je -- sus is ri -- sen, Je -- sus is ri -- sen,
%	Je -- sus is ri -- sen from the dead.

  	\set stanza = #"1. "
	Chante Al -- lé -- lu -- ia au Sei -- gneur.
	Chante Al -- lé -- lu -- ia au Sei -- gneur.
	Chante Al -- lé -- lu -- ia, chante Al -- lé -- lu -- ia.
	Chante Al -- lé -- lu -- ia au Sei -- gneur.

  	\set stanza = #"2. "
	Chante Al -- lé -- lu -- ia au Sei -- gneur.
	Chante Al -- lé -- lu -- ia au Sei -- gneur.
	Chante Al -- lé -- lu -- ia, chante Al -- lé -- lu -- ia.
	Chante Al -- lé -- lu -- ia au Sei -- gneur.
}

textii = \lyricmode {
%	Can -- ta_a -- le -- lu -- ya al Se -- ñor.
%	Can -- ta_a -- le -- lu -- ya
%	a -- le -- lu -- ya
%	Can -- ta_a -- le -- lu -- ya al Se -- ñor.
%
%	Sing Al -- le -- lu -- ia to the Lord.
%	Sing Al -- le -- lu -- ia
%	Al -- le -- lu -- ia
%	sing Al -- le -- lu -- ia to the Lord.

	Chante Al -- lé -- lu -- ia au Sei -- gneur.
	Chante Al -- lé -- lu -- ia
	al -- lé -- lu -- ia,
	chante Al -- lé -- lu -- ia au Sei -- gneur.

	Chante Al -- lé -- lu -- ia au Sei -- gneur.
	Chante Al -- lé -- lu -- ia
	al -- lé -- lu -- ia,
	chante Al -- lé -- lu -- ia au Sei -- gneur.
}

harmonies = \chordmode {
	c2:m bes2 c2:m bes2
	c2:m bes2 g1
	c2:m g2:m as2 es2 
	c2:m bes2 c1:m

	c2:m bes2 c2:m bes2
	c2:m bes2 g1
	c2:m g2:m as2 es2 
	c2:m bes2 c1:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' b { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 1"
		  	\set Staff.shortInstrumentName = #"voix 1"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c' b { \FirstVoice } }
			\addlyrics { \texti }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"voix 2"
		  	\set Staff.shortInstrumentName = #"voix 2"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice= "SecondVoice" { \transpose c' b { \SecondVoice } }
			\addlyrics { \textii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin"
		  	\set Staff.shortInstrumentName = #"violin"
		  	\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.8
  			\new Voice { \transpose c' b { \violin } }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"vocals"
		  	\set Staff.shortInstrumentName = #"vocals"
		  	\set Staff.midiInstrument = #"choir aahs"
  			\new Voice = "SecondVoice"
    			{ \transpose c' c' { \voiceTwo \VocalOne } }
  			\new Voice = "SecondVoice"
    			{ \transpose c' c' { \voiceOne \VocalTwo } }
		>>
	>>
}
