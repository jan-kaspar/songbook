\version "2.14.2"


first = {
	\clef treble
	\key as\major
	\time 3/4
	\tempo 2. = 50
	\relative c'' {
	  	\repeat volta 2 {
			c2 bes4 | bes2 c4 | bes4 as4 bes4 | bes2 c4 | as2 g4 | f2. 
		}
		\break
		f2 es4 | f2 g4 | as2 g8( f8) | es2. | es2 f4 | as2 bes4 | as4 g8( f8 es4) | f2 f4
		\bar "|."
	}
}

second = {
	\relative c'' {
		as2 g4 | g2 as4 | g4 f4 g4 | g2 as4 | f2 es4 | c2. |
		c2 c4 | c2 es4 | es2 des4 | c2. | c2 c4 | f2 g4 | f4 des4( c4) | c2 c4
	}
}

third = {
	\relative c' {
		es2 es4 | es2 es4 | es4 c4 des4 | es2 es4 | des4 bes2 | c2. |
		as2 f4 | as2 bes4 | c2 bes8( as8) | g2. | g2 as4 | c2 es4 | c4 bes8( as8 g4) | as2 as4
	 }
}

fourth = {
	\clef bass
	\key as\major
	\relative c' {
		as2 es4 | es2 as4 | es4 f4 bes,4 | es2 as,4 | des4 es2 | f2.
		f2 c4 | f2 es4 | as,2 bes4 | c2. | c2 f4 | f2 es4 | f4 bes,4( c4) | f2 f4
	}
}

text = \lyricmode {
	Gloire à toi, Sei -- gneur, no -- tre chef et no -- tre roi!

	D'Is -- ra -- ël tu es le Roi, de Da -- vid le Fils très no -- ble.
	Tu viens au Nom du Sei -- gneur: Christ les peu -- ples te bé -- nis -- sent.
}

harmonies = \chordmode {
	g2. | d2 g4 | d2. | d2 g4 | c2 d4 | e2.:m
	e2:m b4:m | e2:m d4 | g2. | b2.:m | b2.:m | e2.:m | g2 d4 | e2.:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {{ \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \voiceOne  \transpose f e { \first } }
			\addlyrics { \text }
  			\new Voice= "second"
    			{ \voiceTwo  \transpose f e { \second } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "third"
    			{ \voiceOne \transpose f e { \third } }
  			\new Voice= "fourth"
    			{ \voiceTwo \transpose f e { \fourth } }
		>>
	>>
}

TextBelow = \markup{}
