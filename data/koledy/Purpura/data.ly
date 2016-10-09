\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100
	\clef treble
	\key d\major
	\time 3/4
	\relative c' {
		fis4 fis4 fis4 | fis4 eis4 fis4 | a4 a4 a4 | a4 gis4 a4 | b4 b2( | b4) cis4. b8 | b4 a2( | a4) r2 | fis4 a4 a4 | a4 b4 a4 |
		fis4 fis4 fis4 | fis4 g4 a4 | g2.( | g2. | g4) r2 | r2.
		\break
		fis4 fis4 fis4 | fis4 eis4 fis4 | a4 a4 a4 | a4 gis4 a4 | b4 b2( | b4) cis4. b8 | b4 a2( | a4) r2 |\break fis4 a4 a4 | a4 b4 a4 |
		g4 g4 g4 | g4 a4 g4 | fis2.( | g2. | fis4) r2 | r2.
		\break
		d4 cis4 d4 | b4 ais4 b4 | d4 cis4 d4 | e4 d4 b4 | a4 d2 | r4 a'4 gis4 | b4 a2( | a4) r2 |
		b4 fis4 e4 | d4 e4 fis4 | b4 fis4 e4 | d4 e4 fis4 | a2 r4 | r2. | r2. | r2.
		\break
		fis4 fis4 fis4 | fis4 eis4 fis4 | a4 a4 a4 | a4 gis4 a4 | b4 b2 | r4 cis4. b8 | b4 a2( | a4) r2 | fis4 a4 a4 | a4 b4 r8 a8 |
		g4 g4 g4 | g4 a4 g4 | fis2.( | g2. | fis2. | fis4) r2
		\bar "|."
	}
}

SecondVoice = {
	\relative c' {
		d4 d4 d4 | d4 cis4 d4 fis4 fis4 fis4 | fis4 eis4 fis4 | g4 g2( | g4) a4. g8 | g4 fis2( | fis4) s2| a,4 fis'4 fis4 | fis4 g4 fis4 |
		d4 d4 d4 | d4 e4 fis4 | e2.( | e2. | e4) s2 | s2.
		d4 d4 d4 | d4 cis4 d4 fis4 fis4 fis4 | fis4 eis4 fis4 | g4 g2( | g4) a4. g8 | g4 fis2( | fis4) s2| a,4 fis'4 fis4 | fis4 g4 fis4 |
		e4 e4 e4 | e4 fis4 e4 | d2.( b2. | d4) s2 | s2.
		s2. s2. s2. s2. s2. | s4 fis4 eis4 | g4 fis2( | fis4) s2 |
		s2. s2. s2. s2. s2. s2. s2. s2.
		d4 d4 d4 | d4 cis4 d4 fis4 fis4 fis4 | fis4 eis4 fis4 | g4 g2 | s4 a4. g8 | g4 fis2( | fis4) s2| a,4 fis'4 fis4 | fis4 g4 s8 fis8 |
		e4 e4 e4 | e4 fis4 e4 | d2.( b2. | d2. | d4) s2
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Ti -- še a o -- chot -- ně pur -- pu -- ra na plot -- ně vo -- ní, stá -- le vo -- ní, nik -- do si nev -- ší -- má, ja ži -- vot mě -- ní se v_dým.
	\set stanza = #"2. "
	Snad je -- nom v_pod -- kro -- ví bás -- ní -- ci blá -- ho -- ví pro ni sl -- zy ro -- ní, hra -- ny jí od -- zvo -- ní ram -- pou -- chem křiš -- ťá -- lo vým.
	\set stanza = #"R. "
	Slun -- ce se vy -- no -- ří, hned však se k_po -- ho -- ří sklo -- ní, rych -- le sklo -- ní, a pak se dos -- ta -- ví dlou -- há a po -- koj -- ná noc.
	\set stanza = #"3. "
	Ti -- še a o -- chot -- ně pur -- pu -- ra na plot -- ně vo -- ní, stá -- le vo -- ní, po ní k_nám vklouz -- lo to ta -- jem -- né kouz -- lo Vá -- noc.
}

harmonies = \chordmode {
	d2. d2. d2. d2. g2. g2. d2. d2. d2. d2. d2. d2. a2.:7 e2.:m a2.:7 a2.:5+
	d2. d2. d2. d2. g2. g2. d2. d2. d2. d2. a2.:7 a2. d2. g2. d2. d2.:7
	g2. g2. g2. g2. d2. d2. d2. d2. b2.:m b2.:m e2. e2. a2. d2.:m a2.:dim a2.:7
	d2. d2. d2. d2. g2. g2. d2. d2. d2. d2. a2.:7 d2. d2. g2. d2. d2.
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
		  	\set Staff.midiInstrument = #"flute"
  			\new Voice = "FirstVoice"
    			{ \voiceOne \transpose c' c' { \FirstVoice } }
			\addlyrics { \text }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose c' c' { \SecondVoice } }
		>>
	>>
}
