\version "2.18.2"

\header {
  title = "Dummy!"
  instrument = "Carillon"
  composer = "Toby Fox"
  arranger = "Foster McLane"
}

main_tempo = \tempo 2 = 100
main_key = \key g \minor

melody = \relative c'' {
  % intro
  g4 bes c g
  bes4 c8 des r d ges4
  g,4 bes c g
  bes4 c8 des r f a4
  g,4 bes c g
  bes4 c8 des r d ges4
  g,4 bes ges a
  f4 aes d,8. f16 ges4

  % part 1
  g4 bes c g
  bes4 c8 des r d ges4
  bes,4 c8 des r d ges4
  bes,4 c8 des r d ges4
  g,4 bes c g
  bes4 c8 des r f a4
  bes,4 c8 des r f a4
  bes,4 c8 des r f a4

  g,4 bes c g
  bes4 c8 des r d ges4
  bes,4 c8 des r d ges4
  bes,4 c8 des r d ges4
  g,4 bes c g
  bes4 c8 des r d ges4
  g,4 bes c ees
  d8 ees4 d8 ges2

  \bar "|."
}

bass = \relative c' {
  % intro
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1

  % part 1
  g8 g f4 fes ees
  d'4 bes g ees
  d'4 bes g ees
  d'4 bes g ees
  g8 g f4 fes ees
  d4 g ges d
  d4 g ges d
  d4 g ges d

  g8 g f4 fes ees
  d'4 bes g ees
  d'4 bes g ees
  d'4 bes g ees
  g8 g f4 fes ees
  d'4 bes g ees
  r1
  r1

  % part 2
  g8 g ges4 f fes
  ees4 bes' a ges
  g8 g ges4 f fes
  ees4 g ges d
  g8 g ges4 f fes
  ees4 bes' a ges
  bes8 bes g4 bes c
  d,4 e ges d

  g8 g ges4 f fes
  ees4 bes' a ges
  ees4 bes' a ges
  ees4 bes' a ges
  g8 g ges4 f fes
  ees4 g ges d
  ees4 g ges d
  ees4 g ges d

  g8 g ges4 f fes
  ees4 bes' a ges
  ees4 bes' a ges
  ees4 bes' a ges
  g8 g ges4 f fes
  ees4 bes' a ges
  c8 c bes4 c des
  d,8 d ges g~ g2

  \bar "|."
}

keys = \new Staff {
  \clef "treble"

  \main_tempo
  \main_key

  \melody
}

pedals = \new Staff {
  \clef "treble_8"

  \main_tempo
  \main_key

  \bass
}

\score {
  <<
    \keys
    \pedals
  >>

  \layout {}
  \midi {}
}
