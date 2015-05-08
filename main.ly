\version "2.18.2"

%%PARTITURA COLABORATIVA

%% DEFINICIÓN DEL PAPEL


#(set-global-staff-size 14)

\paper {
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##f
  systems-per-page = 3
}



%% DEFINICIÓN DE VARIABLES :

global = {
  \time 4/4 \partial 8
  \key c \major
  \tempo "Allegro"

}

%% INCLUSIÓN DE ARCHIVOS EXTERNOS

%% added by Angel D. Sevilla:
\include "oboe.ly"
\include "trompa.ly"
\include "trompeta.ly"
\include "timbales.ly"


%%PLANTILLA DE LA ORQUESTA:

\header {
  title = "Sinfonía nº 9"
  subtitle = "en Do Mayor"
  composer = "W. A. Mozart, Kv. 73"
  % Eliminar el pie de página predeterminado de LilyPond
  tagline = ##f
}


\new StaffGroup {
  <<
  \new Staff {\set Staff.instrumentName ="Oboe" 		\global \oboe}
  \new Staff {\set Staff.instrumentName ="Trompa en Do" 	\global \trompa}
  \new Staff {\set Staff.instrumentName ="Trompeta en Do" 	\global \trompeta}
  \new Staff {\set Staff.instrumentName ="Timables Do-Sol" 	\global \timbales}
  >>
  
}