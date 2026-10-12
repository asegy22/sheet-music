\version "2.24.0"

\header {
  title = "Lost Love"
  subtitle = "Ney & Violin Edition"
  composer = "Dr. Ahmad E. Saad"
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \tempo "Andante / Espressivo" 4 = 72
}

% --- 1. Ney (Flute) Part ---
neyMelody = \relative c' {
  \global
  \clef treble
  % Intro
  R1*4 |
  
  % Main Theme Entry
  R1*2 |
  a'4\mp\( bes8 a g4 f\) |
  e2. r4\breathe |
  
  % Dialogue & Response
  f4\mf\( e8 d e4 f\) |
  g2. f8\( g\) |
  a2. r4 |
  R1 |
  
  % Climax
  bes4\f\( c d c\) |
  bes2 a4\( g\) |
  f4.\> e8 d2\! |
  
  % Outro
  a'4\p g f e |
  d1\pp \bar "|."
}

% --- 2. Violin Solo Part ---
violinMelody = \relative c'' {
  \global
  \clef treble
  % Intro
  f4\p\( e d cis\) |
  d1 |
  f4\( e d cis\) |
  d2. r4 |
  
  % Main Theme
  d8\mf\( a' f e d2\) |
  d8\( a' f e d2\) |
  R1*2 |
  
  % Response
  a'4\f\( d c bes\) |
  a2. g8\( f\) |
  e4\( f g a\) |
  a1 |
  
  % Climax
  d2\ff c |
  bes a |
  a1 |
  
  % Outro
  R1 |
  <f, a d>1\pp \bar "|."
}

% --- 3. Piano Right Hand ---
pianoRH = \relative c' {
  \global
  \clef treble
  r8 f a f r e a e |
  r8 f a f r e a e |
  r8 f a f r e a e |
  r8 f a f r e a e |
  
  <d f a>1 |
  <bes d f>1 |
  <g bes d>1 |
  <a cis e>1 |
  
  <d f a>1 |
  <bes d f>1 |
  <g bes d>1 |
  <a cis e>1 |
  
  <bes d f>1 |
  <c e g>1 |
  <d f a>1 |
  <a cis e>1 |
  
  <d f a>1 |
  <d f a d>1 \bar "|."
}

% --- 4. Piano Left Hand ---
pianoLH = \relative c {
  \global
  \clef bass
  d,8 a' f' a, e a e' a, |
  d,8 a' f' a, e a e' a, |
  d,8 a' f' a, e a e' a, |
  d,8 a' f' a, e a e' a, |
  
  d,8 a' f' a d,2 |
  bes,8 f' d' f bes,2 |
  g,8 d' bes' d g,2 |
  a,8 e' cis' e a,2 |
  
  d,8 a' f' a d,2 |
  bes,8 f' d' f bes,2 |
  g,8 d' bes' d g,2 |
  a,8 e' cis' e a,2 |
  
  bes,8 f' d' f bes,2 |
  c,8 g' e' g c,2 |
  d,8 a' f' a d,2 |
  a,8 e' cis' e a,2 |
  
  d,8 a' f' a d,2 |
  <d, a' d>1 \bar "|."
}

% --- Score Assembly & Output ---
\score {
  <<
    \new Staff \with { instrumentName = "Ney" midiInstrument = "flute" } \neyMelody
    \new Staff \with { instrumentName = "Violin" midiInstrument = "violin" } \violinMelody
    \new PianoStaff \with { instrumentName = "Piano" } <<
      \new Staff \with { midiInstrument = "acoustic grand" } \pianoRH
      \new Staff \with { midiInstrument = "acoustic grand" } \pianoLH
    >>
  >>
  \layout { }
  \midi { }
}