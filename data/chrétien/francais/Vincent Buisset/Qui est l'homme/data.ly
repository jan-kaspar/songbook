\version "2.14.2"

melody = {
	\clef treble
	\key f\major
	\time 4/4
	\tempo 4 = 64
	\relative c' {
		r4^\markup{\italic couplet} f8 g8 f4 d8 c8( | c1) | r4 f8 g8 f4 d8 c8( | c1) |
		r4 f8 g8 f8 e16 d16( d4) | r4 f8 g8 f8 e16 d16( d4) |
		r4 f8 g8 f4 d8 c8( | c1) \bar "||" \break

		r8^\markup{\italic refrain} a'16 a16 a8 a16 a8. g16 g8. f8 | f2 r2
		r8 a16 a16 a8 a16 a8. g16 g8. f8 | f2 r2

		r8 a8 a8 a16 a8. g16 f8 g8. |
		r8 a8 a8 a16 a8. g16 f8 g8. |

		r8 a16 a16 a8 a16 a8. g16 g8. f8 | g2 r2
	}

	\bar "||" \break

	\key g\major

	\relative c'' {
		r4^\markup{\italic {changement de tonalité - couplet}} g8 a8 g4 e8 d8( | d1) | r4 g8 a8 g4 e8 d8( | d1) |
		r4 g8 a8 g8 fis16 e16( e4) | r4 g8 a8 g8 fis16 e16( e4) |
		r4 g8 a8 g4 e8 d8( | d1) \bar "||" \break
		
		\transpose f g' {
			r8^\markup{\italic refrain} a16 a16 a8 a16 a8. g16 g8. f8 | f2 r2
			r8 a16 a16 a8 a16 a8. g16 g8. f8 | f2 r2
		
			r8 a8 a8 a16 a8. g16 f8 g8. |
			r8 a8 a8 a16 a8. g16 f8 g8. |

			r8 a16 a16 a8 a16 a8. g16 g8. f8 | g2 r2 \bar "||" \break

			% finale
			r8^\markup{\italic finale} a8 a8 a16 a8. g16 f8 g8. |
			r8 a8 a8 a16 a8. g16 f8 g8. |

			r8 a16 a16 a8 a16 a8. g16 g8. f8 | g1
		}
	}

	\bar "|."
}

violin_A_i = {
	\clef treble 
	\key f\major
	\time 4/4

	\relative c'' {
		a8 d8 f8 a8 bes, d f4 | a,8 c8 f8 g8 e4 d4 | 
		a8 d8 f8 a8 bes, d f4 | a,8 c8 f8 g8 e8 d8 c4 | 
		a8 d8 f8 a8 bes, d f a | bes a g f a, d f d |
		bes d f4 a,8 c8 f4 | c4 e4 g4 e4

		f,2 e2 | a2 bes2 | f e | a bes | c1 | f,4( f8) e8 d4 c8 bes8 | a2 bes2 | c1
	}

	\key g\major

	\relative c'' {
		% couplet
		e1 | d1 | e | d2. g8 fis8 | e1 | e1 | e2 d2 | d1 |
	
		% refrain
		d1 | e | d | e | d | e | g2 e2 | g fis | 
	
		% final
		b,2 a2 | g1 | g1 | fis1
	}
}

violin_A_ii = {
	\clef treble 
	\key f\major
	\time 4/4

	\relative c'' {
		s1*8

		c1 | d, | c' | d,2 d8 e8 f8 g8 | a2 g2 | a2 bes2 | a2 f2 | g1
	}
	
	\key g\major

	\relative c'' {
		% couplet
		g'8 g g g g g g g | g g g g fis fis e fis |
		g8 g g g g g g g | g g g g fis fis e fis |
		g8 g g g g g g g | a a a a g g g g | g g g g g g g g | g g g g fis fis fis fis
	
		% refrain
		d1 | b2 c4 e8 c8| d1 | b2 c4 b8 c8 | d1 | e1 | d2 c2 | d1 

		% final
		e,1 | e2 d2 | e d | d1
	}
}

text = \lyricmode {
	\set stanza = #"1. "
	Le fruit de nos vies
	Dé -- po -- sé i -- ci
	Tu chan -- ges nos pains 
	En ton corps très Saint
	Pro -- dige au -- jour -- d’hui 

	Qui est l’homme pour que tu penses à lui?
	Qui est il pour que tu t’en sou -- cies
	Notre eau se mêle à ton vin
	Nos pau -- vre -- tés au Di -- vin
	Qui est l’homme pour que tu l’aimes ain -- si?

	\set stanza = #"4. "
	Ta pré -- sence en nous
	Ta puis -- sance en nous
	Vient nous fa -- çon -- ner
	Vient nous trans -- for -- mer
	Chef d’oeuvre en nos vies

	Qui est l’homme pour que tu penses à lui?
	Qui est il pour que tu t’en sou -- cies
	Notre eau se mêle à ton vin
	Nos pau -- vre -- tés au Di -- vin
	Qui est l’homme pour que tu l’aimes ain -- si?

	% finale
	Notre eau se mêle à ton vin
	Nos pau -- vre -- tés au Di -- vin
	Qui est l’homme pour que tu l’aimes ain -- si?
}

harmonies = \chordmode {
	d2:m bes2 | f2 c2 | d2:m bes2 | f2 c2 | d2:m bes2 | g2:m d2:m | bes2 f2 | c1

	f2 c2 d2:m bes2 | f2 c2 d2:m bes2 |
	f2 c2 d2:m bes2 | f2 bes2 | c1

	\transpose f g {
		d2:m bes2 | f2 c2 | d2:m bes2 | f2 c2 | d2:m bes2 | g2:m d2:m | bes2 f2 | c1
	
		f2 c2 d2:m bes2 | f2 c2 d2:m bes2 |
		f2 c2 d2:m bes2 | f2 bes2 | c1
	}

	e2:m a2 c2 g2 c2 g2 d1
}


FullLayout = {
	\new ChoirStaff <<
		\new ChordNames {
			\override ChordNames.ChordName          #'color = #(x11-color 'red)
			\harmonies
		}

		\new Staff <<
		  	\set Staff.instrumentName = #"chant"
		  	\set Staff.shortInstrumentName = #"chant"
			\set Staff.midiInstrument = #"choir aahs"
			\set Staff.midiMinimumVolume = #0.1
	  		\set Staff.midiMaximumVolume = #0.99
  			\new Voice
    			{ \melody }
			\addlyrics { \text }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin 1"
		  	\set Staff.shortInstrumentName = #"violin 1"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.5
  			\new Voice { \violin_A_i }
  			%\new Voice { \voiceOne \flute_i }
			%\new Voice { \voiceTwo \flute_ii }
		>>

		\new Staff <<
		  	\set Staff.instrumentName = #"violin 2"
		  	\set Staff.shortInstrumentName = #"violin 2"
			\set Staff.midiInstrument = #"violin"
			\set Staff.midiMinimumVolume = #0.0
	  		\set Staff.midiMaximumVolume = #0.5
  			\new Voice { \violin_A_ii }
		>>
%
%		\new Staff <<
%		  	\set Staff.instrumentName = #"basse"
%			\set Staff.midiInstrument = #"contrabass"
%			\set Staff.midiMinimumVolume = #0.8
%	  		\set Staff.midiMaximumVolume = #1.0
%  			\new Voice
%    			{ \base }
%		>>

	>>
}
