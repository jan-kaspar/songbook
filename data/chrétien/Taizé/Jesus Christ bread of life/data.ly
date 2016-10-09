\version "2.14.2"

%%number=143

FirstVoice = {
	\clef treble
	\key g\major
	\time 4/4
	\tempo 4 = 80
	\relative c' {
		d4. d8 e2 | e4. e8 fis2 | fis8 fis8 fis8 fis8 g8 fis4 g8 | a2 a2
		b4. b8 a2 | g4. g8 fis2 | e8 e8 e8 e8 g8 g4 fis8 | g2. r4 \bar "|."
	}
}

SecondVoice = {
	\relative c' {
		b4. b8 c2 | c4. c8 d2 | d8 d8 d8 d8 e8 e4 e8 | g2 fis2 |
		g4. g8 fis2 | e4. e8 d2 | e8 e8 e8 e8 d8 d4 d8 | b2. s4 
	}
}

ThirdVoice = {
	\clef bass
	\key g\major
	\relative c' {
		g4. g8 g2 | a4. a8 a2 | b8 b8 b8 b8 b8 b4 cis8 | d2 d2 |
		d4. d8 d2 | b4. b8 d2 | c8 c8 b8 b8 a8 a4 a8 | g2. r4
	}
}

FourthVoice = {
	\relative c {
		g4. g8 c2 | a4. a8 d2 | b8 b8 b8 b8 e8 e4 e8 | d2 d2
		g4. g8 d2 | e4. e8 b2 | c8 c8 c8 c8 d8 d4 d8 | g,2. s4
	}
}

text = \lyricmode {
	Je -- sus Christ, bread of life,
	those who come to you will not hun -- ger.
	Je -- sus Christ, Ri -- sen Lord,
	those who trust in you will not thirst.
}

harmonies = \chordmode {
	g2 c2 | a2:m d2 | b2:m e2:m | d2:1.4.5 d2
	g2 d2 | e2:m b2:m | c2 d2 | g1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose e' e' { \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"violin"
  			\new Voice = "first"
    			{ \voiceOne \transpose e' e' { \FirstVoice } }
  			\new Voice= "second"
    			{ \voiceTwo \transpose e' e' { \SecondVoice } }
			\addlyrics { \text }
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
