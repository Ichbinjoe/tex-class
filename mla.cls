\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla}[2017/01/10 Joseph Hirschfeld Custom]
\LoadClass{basic}

\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\usepackage{times}

\renewcommand{\headrulewidth}{0pt}

\newcommand{\refreshpageheader}[1]{%
    \rhead{#1 \thepage{}}
}

\renewcommand{\author}[2]{%
    \refreshpageheader{#2} 
    \def\@authorfirst{#1}
    \def\@authorlast{#2}
}

\newcommand{\instructor}[1]{\def\@instructor{#1}}
\newcommand{\classid}[1]{\def\@classid{#1}}
\renewcommand{\date}[1]{\def\@date{#1}}

\date{\today} % default to today

\renewcommand{\maketitle}[0]{%
\begin{flushleft}
    \@authorfirst{} \@authorlast{}
    \newline \@instructor{}
    \newline \@classid{}
    \newline \@date{}
    \newline
\end{flushleft}
\begin{center}
    \@title
\end{center}
}

% vim:ft=tex
