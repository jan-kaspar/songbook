\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 50
	\clef treble
	\key a\major
	\time 6/8
	\relative c' {
	  	e8.( fis16) e8 cis4. | e8.( fis16) e8 cis4. | b'4 b16( gis16) gis4.
		a4 a16( e16) e4. |\break
		fis4 fis8 a8 gis8 fis8 | e8. fis16 e8 cis4. |
		fis4 fis8 a8 gis8 fis8 | e8. fis16 e8 cis4. |
		b'8 b8 b8 d8 b8 gis8 | a4.( cis4.) | a8 e8 cis8 e8 d8 b8 | a2.
		\bar "|."
	}
}

SecondVoice = {
  	\relative c' {
		cis8.( d16) cis8 a4. | cis8.( d16) cis8 a4. | gis'4 gis16( e16) e4. |
		cis4 cis16( cis16) cis4. |
		d4 fis8 fis8 e8 d8 | cis8. d16 cis8 a4. |
		d4 fis8 fis8 e8 d8 | cis8. d16 cis8 a4. |
		d8 d8 d8 fis8 d8 b8 | cis4.( e4.) | cis8 cis8 a8 cis8 b8 gis8 | a2.
	}
}

text = \lyricmode {
  	\set stanza = #"1. "
	Ti -- chá noc, sva -- tá noc, ja -- la lid,
	v_bla -- hý klid. Dvě jen srd -- cí tu v_Bet -- lé -- mě bdí,
	hvěz -- dy při svi -- tu u jes -- lí dlí, v_nichž ma -- lé dě -- ťát -- ko spí,
	v_nichž ma -- lé dě -- ťát -- ko spí.
}

textp = \lyricmode {
	Ci -- cha noc, świę -- ta noc,
	Po -- kój_nie -- sie, lu -- dziom wszem 
	A u żłó -- "" -- bka Ma -- tka Świę -- ta
	Czu -- wa sa -- "" -- ma u -- śmiech -- nię -- ta
	Nad -- "" dzie -- cią -- "" -- tka snem,
	Nad -- "" dzie -- cią -- "" -- tka snem.
}

textg = \lyricmode {
	Stil -- le Nacht, Hei -- lige Nacht! Al -- les schläft, ein -- sam wacht.
	Nur das tra -- "u" -- te hei -- li -- ge Paar.
	Hol -- der Kna -- be im lock -- i -- gten Haar,
	Schla -- fe in himm -- li -- scher Ruh!
	Schla -- fe in himm -- li -- scher Ruh!
}

texte = \lyricmode {
	Si -- lent night, ho -- ly night.
	All is calm, all is bright.
	Round yon Vir -- "" -- gin Mo -- ther and Child.
	Ho -- ly in -- fant so ten -- der and mild,
	Sle -- ep in heav -- en -- ly peace,
	Sle -- ep in heav -- en -- ly peace.
}

harmonies = \chordmode {
	a2. s2. e4. e4.:7
	a2. d2. a2.
	d2. a2. e2.:7
	%a2. s4. e4. a2.
	%fis4.:m a4. | s4 fis8:m e8:7 b8:m e8:7 | a2.
	fis4.:m a4. | s4. e4. | a2.
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
			\addlyrics { \textg }
			\addlyrics { \textp }
			\addlyrics { \texte }
  			\new Voice = "SecondVoice"
    			{ \voiceTwo \transpose c' c' { \SecondVoice } }
		>>
	>>
}
