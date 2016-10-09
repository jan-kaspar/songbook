\version "2.14.2"

FirstVoice = {
	\clef treble
	\key a\major
	\time 4/4
	\tempo 4 = 84
	\relative c'' {
		\partial4 gis8 gis8
		\repeat volta 2 {
			a4 a8 a8 a4. a8 | b8 b8 a8 a8 gis4 fis8 gis8 |
			\time 2/4 a4 cis8 cis8 | \time 4/4 b4 b2. |
			d4 cis8 b8 a4 a4 | b8 b8 fis8 fis8 gis4 gis4 |
			a2 a4 fis8 a8 | b2. gis8 gis8
		}
	}
}

SecondVoice = {
	\relative c' {
		e8 e8 | e4 e8 e8 fis4. fis8 | fis8 fis8 fis8 fis8 e4 e8 e8 | e4 e8 e8 | e4 e2. |
		fis4 fis8 fis8 fis4 fis4 | fis8 fis8 d8 d8 e4 e4 | fis2 fis4 d8 fis8 | e2. e8 e8
	}
}

ThirdVoice = {
	\clef bass
	\key a\major
	\relative c' {
		gis8 gis8 | a4 cis8 cis8 d4. d8 | d8 d8 b8 b8 b4 b8 b8 | a4 a8 a8 | gis4 gis2.
		b4 e8 d8 cis4 cis4 | b8 b8 a8 a8 gis4 cis4 | cis2 b4 b8 b8 | gis2. gis8 gis8
	}
}

FourthVoice = {
	\relative c {
		e8 e8 | cis4 a8 a8 d4. d8 | b8 b8 d8 d8 e4 d8 d8 | cis4 a8 a8 | e'4 e2. |
		b4 cis8 d8 fis4 e4 | d8 d8 fis8 fis8 cis4 b4 | a2 d4 b8 b8 | e2. e8 e8
	}
}

text_en = \lyricmode {
	I am sure I shall see
	the good -- ness of the Lord
	in the land of the li -- ving.
	Yes, I shall see
	the good -- ness of our God,
	hold firm, trust in the Lord.

	I am
}

text_pol = \lyricmode {
	\override LyricText #'font-shape = #'italic
	Wie -- rzę w~to, uf -- ność mam, że uj -- rzę do -- broć Bo -- ga w~kra -- i -- nie ży -- ją -- cych.
	Tak, pew -- ność mam i nie za -- wio -- dę się, to w~Nim na -- dzie -- ja jest.
	Wie -- rzę
}

harmonies = \chordmode {
	e4 | a4/cis a4 d2 | b4:m d4:6 e4 b4:m/d | a4/cis a4 | e1
	b4:m b4:m/d fis4:m fis4:m/e | b4:m/d d4/fis cis:m cis:m/b |
	fis2:m/a d4:6 b4:m | e1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose e' e' { \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"violin"
  			\new Voice = "first"
    			{ \voiceOne \transpose e' e' { \FirstVoice } }
			\addlyrics { \text_en }
			\addlyrics { \text_pol }
  			\new Voice= "second"
    			{ \voiceTwo \transpose e' e' { \SecondVoice } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "third"
    			{ \voiceOne \transpose e' e' { \ThirdVoice } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose e' e' { \FourthVoice } }
		>>
	>>
}
