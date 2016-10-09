\version "2.14.2"

%%number=153

first = {
	\clef treble
	\key as\major
	\time 4/4
	\tempo 4 = 80
	\relative c' {
		\partial 8 c8
		\repeat volta 2 {
			f4 f8 g8 as8 g8 as8 bes8 | c2 r8 c8 c8 bes8 | as4. g8 f4 es4 | c2 r8 as'8 g8 f8 | e4. f8 g8 c8 bes8 as8
			g2 r8 bes8 bes8 c8 | des4 c8 bes8 as4. g8 | f8 f8 es8 es8 f4 r8 c8
		}
	}
}

second = {
	\clef treble
	\key as\major
	\time 4/4
	\relative c' {
		\partial 8 s8
		\repeat volta 2 {
			r4 r8 c8
			f4 f8 g8 as8 g8 as8 bes8   c2 r8 c8 c8 bes8   as4. g8 f4 es4   c2 r8 as'8 g8 f8   e4. f8 g8 c8 bes8 as8
			g2 r8 bes8 bes8 c8   des4 c8 bes8 as4. g8   f8 f8 es8 es8
		}
		\partial 4	f4
	}
}

textI = \lyricmode {
	Re -- tour -- ne, mon âme, à ton re -- pos,
	car le Sei -- gneur t'a fait du bien.
	Il a gar -- dé mon â -- me de la mort.
	Il es -- suie -- ra pour tou -- jours les lar -- mes de nos yeux.
	Re
}

textII = \lyricmode {
	Re -- tour -- ne, mon âme, à ton re -- pos,
	car le Sei -- gneur t'a fait du bien.
	Il a gar -- dé mon â -- me de la mort.
	Il es -- suie -- ra pour tou -- jours les lar -- mes de nos yeux.
}

harmonies = \chordmode {
	s8 e2:m a2:m g1 c1 g1 b1:7 c1 d2 e2:m a2:m e2:m
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames { \transpose c' c' { \harmonies } }
		\new Staff <<
			\set Staff.midiInstrument = #"flute"
  			\new Voice = "first"
    			{ \oneVoice \transpose c' b { \first } }
			\addlyrics { \textI }
		>>
		\new Staff <<
			\set Staff.midiInstrument = #"cello"
  			\new Voice= "second"
    			{ \oneVoice \transpose c' b { \second } }
			\addlyrics { \textII }
		>>
	>>
}

TextBelow = \markup{}
