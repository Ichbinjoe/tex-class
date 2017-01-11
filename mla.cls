\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla}[2017/01/10 Joseph Hirschfeld Custom]

\LoadClass{basi

\renewcommand{\author}[1]{\def\@author{#1}}
\newcommand{\instructor}[1]{\def\@instructor{#1}}
\newcommand{\classid}[1]{\def\@classid{#1}}
\renewcommand{\date}[1]{\def\@date{#1}}

\date{\today} % default to today

\newcommand{\maketitle}[0]{%
\begin{flushleft}
    \@author
    \newline \@instructor
    \newline \@classid
    \newline \@date
    \newline
\end{flushleft}
\begin{center}
        \@title
\end{center}
}

% vim:ft=tex
