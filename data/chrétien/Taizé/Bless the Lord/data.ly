\version "2.14.2"

%%number=5
%%page=32

first = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 78
	\relative c'' {
		a4. f8 g4. d8 | d2 r4 a'4 | d4 d4 c4 g4 | a1
		a4. f8 g4. d8 | d2 r4 d4 | f4 f4 e4 c4 | d2. r4
	}
}

second = {
	\relative c' {
		f4. f8 d4. d8 | d2 s4 f4 | f4 f4 e4 e4 | f2 e2
		f4. f8 d4. d8 | d2 s4 d4 | d4 d4 c4 c4 | a2. s4
	}
}

third = {
	\relative c' {
		a4. a8 b4. g8 | a2 s4 a4 | bes4 a4 g4 c4 | c2 cis2
		d4. a8 b4. g8 | a2 s4 s4 | bes4 a4 g4 g4 | f2.
	}
}

fourth = {
	\clef bass
	\key f\major
	d4. d8 g4. g8 | d2 r4 d4 | bes,4 bes,4 c4 c4 | f4 g4 a2
	d4. d8 g4. g8 | d2 r4 d4 | bes,4 bes,4 c4 e4 | d2. r4 \bar "|."
}

text = \lyricmode {
	Bless the Lord, my soul, and bless God's ho -- ly name.
	Bless the Lord, my soul, who leads me in -- to life.
}

textp = \lyricmode {
	Wiel -- bić Pa -- na chcę, ra -- dos -- ną śpie -- wać pieśń.
	Wiel -- bić Pa -- na chcę, On źró -- dłem ży -- cia jest.
}

harmonies = \chordmode {
	d2:m g2 d1:m bes2 c2 f2 a2
	d2:m g2 d1:m bes2 c2 d1:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {{ \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne  \transpose d d { \first } }
			\addlyrics { \text }
			\addlyrics { \textp }
  			\new Voice= "second"
    			{ \voiceTwo  \transpose d d { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "third"
    			{ \voiceOne \transpose c' c' { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose c' c' { \fourth } }
		>>
	>>
}

TextBelow = \markup{}
