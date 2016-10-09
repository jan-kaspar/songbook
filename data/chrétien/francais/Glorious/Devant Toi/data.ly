\version "2.14.2"

% little smaller to fit on one page
#(set-global-staff-size 16)

\paper{
  #(define fonts
    (make-pango-font-tree "URW Palladio L"
                          "Nimbus Sans"
                          "Luxi Mono"
                           (/ 16 16)))
}

FirstVoice = {
  	\tempo 4 = 126
	\clef treble
	\key b\major
	\time 4/4
	\relative c' {
		r2 r8 b8 cis b | cis dis dis4 r4 dis8 e8 ~ | e8 dis4 cis8 ~ cis4 b8 b8 ~ | b4 r4 r2 |
		r2 r8 b8 fis'8 b,8 | fis'8 gis8 gis4 r4 ais8 b8 ~ | b8 ais4 gis4 fis4 fis8 ~ | fis4 r4 r2 \break
		r2 r8 b,8 cis b | cis dis dis4 r4 dis8 e8 ~ | e8 dis4 cis8 ~ cis4 b8 b8 ~ | b4 r4 r2 |
		r2 r8 b8 fis'8 b,8 | fis'8 gis8 gis4 r4 ais8 b8 ~ | b8 ais4 gis4 fis4 fis8 ~ | fis2 r2 \break

		r2 r4 r8 ais8 ~ | ais8 b8 b8 ais8 b4 fis8 ais8 ~ | ais8 b8 b8 ais8 b4 r8 ais8 ~ |
		ais8 b8 b8 ais8 b4 cis8 dis8 ~ | dis8 cis8 cis8 b8 cis4 r8 ais8 ~ | ais8 b8 b8 ais8 b4 fis8 ais8 ~ |
		ais8 b8 b8 ais8 b4 r8 ais8 ~ | ais8 b8 b8 ais8 b4 fis8 dis'8 ~ | dis8 cis4 b4 cis4 cis8 ~ | cis1 | \break

		r2 r8 b8 b8 b8 | ais8 b8 b4 r8 b8 b8 b8 | ais8 b8 b4 r8 b8 cis8 dis8 ~ | dis4 r4 r8 b8 b8 b8 |
		b8 cis8 cis4 r8 b8 b8 b8 | ais8 b8 b4 r8 b8 b8 b8 | ais8 b8 b4 r8 b8 cis8 dis8 ~ | dis4 r4 r8 b8 b8 b8 | b8 cis8 cis4 r2 \break	

		b8 ais8 b8 fis'8 dis4 r4 | b8 ais8 b8 fis'8 dis4 r4 | b8 ais16 b16 ~ b4 b8 ais8 b8 cis8 | cis2 r2 \bar "|."
	}
}


texti = \lyricmode {
	Nous ve -- nons de -- vant Toi pour san -- cti -- fier Ton nom.
	Nous ve -- nons de -- vant Toi im -- plo -- rer Ton par -- don.
	Le coeur re -- con -- nais -- sant nous pro -- cla -- mons Ta gloire.
	Le coeur re -- con -- nais -- sant nous chan -- tons ta vic -- toire.

	Lève ta lu -- miè -- re et bril -- le sur la terre,
	don -- ne nous de voir que tout est ac -- com -- plie.
	Et tu nous ap -- pelle à bril -- ler dans le ciel
	com -- me les é -- toiles que toi même tu fais luire.

	Nous voi -- ci de -- vant Toi i -- ci et main -- te -- nant em -- bra -- sés.
	Tu es le Dieu vi -- vant. Nous é -- tions pri -- son -- niers,
	nous voi -- ci li -- bé -- rés, re -- le -- vés!
	Tu es le Dieu pré -- sent.

	Wow oh oh oh oh.
	Wow oh oh oh oh.
	Wow oh oh.
	Wow oh oh oh oh.
}

textii = \lyricmode {
	Nous ve -- nons de -- vant Toi pour vi -- vr'en Ta pré -- sence.
	Nous ve -- nons de -- vant Toi goû -- ter Ta bien -- veil -- lence.
	Le coeur re -- con -- nais -- sant nous ac -- cueil -- lons Ta grace.
	Le coeur re -- con -- nais -- sant nous con -- tem -- plons Ta face.
}

harmonies = \chordmode {
	s1 b1 e1 b1 b1 gis1:m e1 fis1 fis1 b1 e1 b1 b1 gis1:m e1 fis1

	fis1 e1 b1/dis cis1:m fis1 e1 b1/dis cis1:m fis1 a1

	b1 gis1:m e1 b1 fis1 gis1:m e1 b1 a1 gis1:m e1 b1 fis1
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose b a { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose b a { \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
		>>


	>>
}
