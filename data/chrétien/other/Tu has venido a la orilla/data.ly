\version "2.14.2"

voice_i = {
  	\tempo 4 = 40
	\clef treble
	\key c\major
	\time 4/4
	\relative c'' {
	  \partial8 c8^\markup{\italic intro - violin} | a'4 a4 b2 | g4 g4 a2 | f4 f8. e16 d4 \tuplet 3/2 { d8 c8 b8 } | c1 \bar "||" \break
	  e,2 r8 d8 e8 f8 e8 d8 | c4 c2 d8. e16 | f4 f4 r8 f8 \tuplet 3/2 {f8 e8 f8} |
	  d4 d4. a8 c8. d16 | e4 e4. e8 f4. d16 | c4 c2 c4 | a2 r8 a8 b8 c8 b8 a8 |
	  g4 g2 f4.( e16) | f4 f4. g8 a8 g8 f8 | e4( f4) g4 c8 c8 | a4 a4 r8 a8 b8 c8 b8 a8 |
	  g4 g2 f4. e16 | f2 r8 d8 e8 f8 e8 d8 | c1
	}
}

emphasize = {
%  \override Lyrics.LyricText.font-shape = #'italic
  \override Lyrics.LyricText.font-series = #'bold
}

normal = {
%  \revert Lyrics.LyricText.font-shape
  \revert Lyrics.LyricText.font-series
}

text_i = \lyricmode {
  "" "" "" "" ""
  "" "" "" "" ""
  "" "" "" "" ""
  \set stanza = #"1. "
  Tú has ve -- ni -- do a la o -- ri -- lla,
  no_has bus -- ca -- do ni_a sa -- bios ni_a ri -- cos.
  Tan sólo quieres que yo te siga.

  \set stanza = #"R. "
  \emphasize
  Señor, me has mirado a los ojos,
  sonriendo has dicho mi nombre.
  En la arena he dejado mi barca:
  junto a Ti buscaré otro mar.
  
%  Tú sabes bien lo que tengo,
%  en mi barca no hay oro ni espadas,
%  tan sólo redes y mi trabajo.
%  
%  Tú necesitas mis manos,
%  mi cansancio que a otros descanse,
%  amor que quiera seguir amando.
%  Tomado de AlbumCancionYLetra.com
%  
%  Tú, pescador de otros mares,
%  ansia eterna de almas que esperan.
%  Amigo bueno que así te llaman
}


harmonies = \chordmode {
}

FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
		  	\CommonChordSettings
			\transpose c c { \harmonies }
		}

		\new Staff <<
		  	%\set Staff.instrumentName = #"voix"
		  	%\set Staff.shortInstrumentName = #"voix"
			\set Staff.midiInstrument = #"flute"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice = "FirstVoice" { \transpose c c { \voice_i } }
			\addlyrics { \text_i }
		>>
	>>
}
