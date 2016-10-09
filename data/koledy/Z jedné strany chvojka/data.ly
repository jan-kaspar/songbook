\version "2.14.2"

FirstVoice = {
	\clef treble
	\key d\major
	\time 2/4
	\tempo 4=100
	\relative c' {
	 	d8 e8 fis8 g8 | a4 a4 | b8 cis8 d8 b8 | a4 a4 | b8 g8 g8 b8 | a8 fis8 fis8 a8
		g8 e8 cis8 a8 | d8( fis8) a4 | b8 g8 g8 b8 | a8 fis8 fis8 a8 | g8 e8 cis8 a8 | d8( fis8) d4
		\bar "|."
	}
}


text = \lyricmode {
  Z_jed -- né stra -- ny chvoj -- ka z_dru -- hé bo -- ro -- věn -- ka,
  pá -- sli ov -- ce pas -- tuš -- ko -- vé, je -- dli ka -- ši z_hrn -- ka
  pá -- sli ov -- ce pas -- tuš -- ko -- vé, je -- dli ka -- ši z_hrn -- ka
}

harmonies = \chordmode {
  d2 s2 g2 d2 g2 d2 a2:7 d2 g2 d2 a2:7 d2
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c' c' { \harmonies }
		}
		\new Staff <<
  			\new Voice = "FirstVoice"
    			{ \FirstVoice }
			\addlyrics { \text }
		>>
	>>
}
