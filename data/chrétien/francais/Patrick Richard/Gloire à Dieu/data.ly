\version "2.14.2"

FirstVoice = {
  	\tempo 4 = 100 % TODO
	\clef treble
	\key c\major
	\time 4/4
	\relative c'' {
		c8^\markup{\italic refrain} b4 a4. e8 e8 | f8 a4 e4. r8 e8 | d8 e8 d8 c4 a4 a'8 | b8 fis8 a8 gis4( a8) b4 |
		c8 b4 a4. e8 e8 | f8 a4 e4. r4 | d4 d c c | b'8 gis4 a8 ~ a2 | \break

		\time 2/4 r4.^\markup{\italic couplet} e8 | \time 4/4 f8 f f f f  a g e~ | e2 r4. e8 |
		f8 f f f f a g e8 ~ | e2 r8 a8 a8 b8 |
		c2 b2 | a4 e4 r8 a8 a8 b8 | c2 b2 | b2 b4 r4 \bar "|."
	}
}


texti = \lyricmode {
  \set stanza = #"R. "
  Gloire à Dieu, au plus haut des cieux
  et paix sur la ter -- re aux hom -- mes qu'Il ai -- me!
  Gloire à Dieu, au plus haut des cieux,
  gloi -- re, gloi -- re, gloire à Dieu!
 
  \set stanza = #"1. "
  Nous te lou -- ons, nous te bé -- nis -- sons,
  nous t'a -- do -- rons, nous te glo -- ri -- fions,
  et nous te ren -- dons grâ -- ce,
  pour ton im -- men -- se gloi -- re.
}

textii = \lyricmode {
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" ""

  \set stanza = #"2. "
  Sei -- gneur Dieu le Pè -- re tout puis -- sant,
  Sei -- gneur fils u -- ni -- que Jé -- sus Christ,
  Sei -- gneur A -- gneau de Dieu ""
  le fils du Pè "-" re. ""
}

textiii = \lyricmode {
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" ""

  \set stanza = #"3. "
  Toi qui en -- lèv -- es tous les pé -- chés,
  sau -- ve nous du mal "" prends pi -- tié,
  as -- sis au -- près du Pè -- re,
  é -- cou -- te nos pri -- è -- res.
}

textiiii = \lyricmode {
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" ""

  \set stanza = #"4. "
  Car toi seul est Saint "" et Sei -- gneur,
  toi seul est le Très Haut Jé -- sus Christ
  a -- vec le Saint Es -- prit ""
  dans la gloi -- re du Pè -- re.
}

harmonies = \chordmode {
  a1:m d2:m a2:m d2:m a2:m b2:7 e2
  a1:m d2:m a2:m d2:m a2:m b2:7 a2:m

  a2:m d1:m a1:m d1:m a1:m d2:m7 e2: a1:m d2:m7 b2:7 e1:7
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose a a { \harmonies }
		}

		\new Staff <<
		  	\set Staff.instrumentName = #""
		  	\set Staff.shortInstrumentName = #""
			\set Staff.midiInstrument = #"flute"
			%\set Staff.midiMinimumVolume = #0.1
	  		%\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose a a { \FirstVoice } }
			\addlyrics { \texti }
			\addlyrics { \textii }
			\addlyrics { \textiii }
			\addlyrics { \textiiii }
		>>
	>>
}
