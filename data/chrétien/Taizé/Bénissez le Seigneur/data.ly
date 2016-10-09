\version "2.14.2"

%%number=16

solo = {
	\clef treble
	\key d\major
	\time 2/4
	\tempo 4 = 100
	\relative c' {
		fis4 fis8 fis8 | e8 e8 fis8 e8 | d2 | r2 | r2 |
		g4. g8 | fis8 fis8 g8 fis8 | e2 | r2 r4. a8 |
		d4. d8 | cis8 cis8 d8 cis8 | b2 | r2 | r2 | r2 | r2
		\bar "|."
	}
}

reply = {
	\clef treble
	\key d\major
	\time 2/4
	\relative c' {
		r2 r2 r4 d8 d8 | a'4 g8 fis8 | e2 | r2 | r2 | r4
		e8 e8 | b'4 a8 g8 | fis2 | r2 | r2 | r4
		fis8 fis8 | b4 a8 g8 | fis4 a8 a8 | b4 d8 cis8 | d2
	}
}

first = {
	\clef treble
	\key d\major
	\time 2/4
	\relative c' {
	  	fis2 | e2 | d2 | a'4 b4 | cis2 | g2 | fis2 | e2
		b'4 a8 g8 | fis2 | b2 | ais2 | b4 fis8 fis8 | b4 a8 g8 | fis4 a8 a8 | b4 d8 cis8 | d2
	}
}

second = {
	\clef treble 
	\relative c' {
		d2 | cis2 | d2 | d4 g8 fis8 | e2 e2 | dis2 | e2 |
		d4 cis8 b8 | d2 | fis2 | fis2 | fis4 d8 d8 | d4 cis8 e8 | d4 e8 fis8 | g4 fis8 e8 | fis2
	}
}

third = {
	\clef bass
	\key d\major
	\relative c' {
		 a2 | a2 | fis2 | fis4 g4 | a2 | b2 | b2 | g2 | g4 e8 a8 | a2 | d2 | cis2 |
		 d4 |  b8 b8 | g4 a8 a8 | a4 d8 cis8 | b4 a8 a8 | a2
	}
}

fourth = {
	\relative c {
		 d2 | a2 | b2 | fis'4 g4 | a2| e2 | b2 | e2 |
		 g,4 a4 | d2 | b2 | fis'2 | b4 b8 b8 | g4 a8 a8 | d,4 d8 d8 | g4 a8 a8 | d,2
	}
}

textS = \lyricmode {
	Tout -- es les oeu -- vres du Sei -- gneur,
	Vous les an -- ges du Sei -- gneur,
	A lui lou -- an -- ge pour tou -- jours!
}

textR = \lyricmode {
	Bé -- nis -- sez le Sei -- gneur!
	Bé -- nis -- sez le Sei -- gneur!
	Bé -- nis -- sez le Sei -- gneur,
	Bé -- nis -- sez le Sei -- gneur!
}

harmonies = \chordmode {
	d2 a2 b2:m d4 g4 a2
	e2:m b2:7 e2:m g4 a4 d2
	b2:m fis2 b2:m g4 a4 d2 g4 a4 d2
}


FullLayout = {
<<
	\new ChordNames \with { midiInstrument = "acoustic guitar (nylon)" }
	{
		\harmonies
	}


	\new Staff
	<<
		%\set Staff.instrumentName = #"alto recorder"
  		\new Voice = "solo"
			{ \oneVoice \transpose c c { \solo } }
		\addlyrics { \textS }
	>>
	
	\new Staff
	<<
		\set Staff.midiInstrument = #"flute"
  		\new Voice = "reply"
			{ \oneVoice \transpose c c { \reply } }
		\addlyrics { \textR }
	>>

	\new ChoirStaff
	<<
		\new Staff
		<<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne \first }
  			\new Voice = "second"
    			{ \voiceTwo \second }
		>>

		\new Staff
		<<
			\set Staff.midiInstrument = #"cello"
  			\new Voice= "third"
    			{ \voiceOne \third }
  			\new Voice = "fourth"
    			{ \voiceTwo \fourth }
		>>
	>>
>>
}

%\paper{
%  indent = 2.5\cm
%}
