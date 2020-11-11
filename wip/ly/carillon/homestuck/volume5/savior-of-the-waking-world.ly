\version "2.20.0"

\header {
  title = "Savior of the Waking World"
  instrument = "Carillon"
  composer = "Toby Fox"
  arranger = "Lily Foster"
}

main_tempo = \tempo 4 = 120
main_key = \key b \major

melody = \relative c'' {
  % part 1

  \bar "|."
}

bass = \relative c' {
  % part 1

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
