%% ----------------------------------------------------------------
%% webtech --- modern sans-serif text class for WebTech exercises
%%
%% Copyright (C) 2018 by Alexander Bartolomey --- occloxium@gmail.com
%% This File may be distributed and/or modified under the condition of the below
%% license.
%%
%% MIT License Copyright (c) 2018
%%
%% Permission is hereby granted, free of charge, to any person obtaining a copy
%% of this software and associated documentation files (the "Software"), to deal
%% in the Software without restriction, including without limitation the rights
%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom the Software is
%% furnished to do so, subject to the following conditions:
%%
%% The above copyright notice and this permission notice shall be included in all
%% copies or substantial portions of the Software.
%%
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%% SOFTWARE.
%%
%% This work is "maintained" (as per LPPL maintenance status) by
%% Alexander Bartolomey.
%%
%% ----------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{webtech}[2018/10/17 WebTech Text Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass[a4paper]{article}
\makeatletter
\usepackage[left=2cm,right=2cm,top=2cm,bottom=2cm,includeheadfoot]{geometry}
\let\footruleskip\undefined
\usepackage[utf8]{inputenc}
\usepackage[english,ngerman]{babel}
\usepackage{titlesec,enumitem,graphicx,float,xifthen,translations,lmodern,csquotes,etoolbox,fancyhdr,kvoptions,xcolor}
\usepackage{avant}
\usepackage{helvet}
\usepackage[linktocpage=true]{hyperref}
\SetupKeyvalOptions{
  family=webtech,
  prefix=webtech@
}
\ProcessKeyvalOptions*

\newcommand{\webtech}{\textsc{WebTech} }

\DeclareTranslationFallback{abgabe}{Abgabe}
\DeclareTranslation{German}{abgabe}{Abgabe}
\DeclareTranslation{English}{abgabe}{Due date}
\DeclareTranslationFallback{gruppe}{Gruppe}
\DeclareTranslation{German}{gruppe}{Gruppe}
\DeclareTranslation{English}{gruppe}{Group}
\DeclareTranslationFallback{toc}{Inhaltsverzeichnis}
\DeclareTranslation{German}{toc}{Inhaltsverzeichnis}
\DeclareTranslation{English}{toc}{Table of Contents}
\DeclareTranslationFallback{tof}{Abbildungsverzeichnis}
\DeclareTranslation{German}{tof}{Abbildungsverzeichnis}
\DeclareTranslation{English}{tof}{List of Figures}
\DeclareTranslationFallback{tot}{Tabellenverzeichnis}
\DeclareTranslation{German}{tot}{Tabellenverzeichnis}
\DeclareTranslation{English}{tot}{List of Tables}

\newcommand{\@titlefont}{%
  \fontfamily{pag}\selectfont%
}

\newcommand{\titlefont}[1]{%
  \renewcommand{\@titlefont}{\fontfamily{#1}\selectfont}%
}

\newcommand{\@subtitlefont}{%
  \fontfamily{pag}\selectfont%
}

\newcommand{\subtitlefont}[1]{%
  \renewcommand{\@subtitlefont}{\fontfamily{#1}\selectfont}%
}

\newcommand{\@authorfont}{%
  \fontfamily{pag}\selectfont%
}

\newcommand{\authorfont}[1]{%
  \renewcommand{\@authorfont}{\fontfamily{#1}\selectfont}%
}

\newcommand{\@headingfont}{%
  \fontfamily{pag}\selectfont%
}

\newcommand{\headingfont}[1]{%
  \renewcommand{\@headingfont}{\fontfamily{#1}\selectfont}%
}

\newcommand{\headingstyle}[1]{%
  \renewcommand{\@headingstyling}{#1}%
}

\newcommand{\@headingstyling}{%
  \color{blue--dark}%
  \sffamily%
  \bfseries%
}

\newcommand{\titlestyle}[1]{%
  \renewcommand{\@titlestyling}{#1}%
}

\newcommand{\@titlestyling}{%
  \color{blue}%
  \sffamily%
  \bfseries%
  \huge%
}

\newcommand{\subtitlestyle}[1]{%
  \renewcommand{\@subtitlestyling}{#1}%
}

\newcommand{\@subtitlestyling}{%
  \color{blue--dark}%
  \sffamily%
}

\newcommand{\authorstyle}[1]{%
  \renewcommand{\@authorstyling}{#1}%
}

\newcommand{\@authorstyling}{%
  \color{blue--dark}%
  \sffamily%
}

\addto\captionsgerman{%
  \renewcommand{\contentsname}{%
    \Large\@headingstyling \GetTranslation{toc}%
  }%
}

\addto\captionsgerman{%
  \renewcommand{\listfigurename}{%
    \Large\@headingstyling \GetTranslation{tof}%
  }%
}

\addto\captionsgerman{%
  \renewcommand{\listtablename}{%
    \Large\@headingstyling \GetTranslation{tot}%
  }%
}

\addto\captionsenglish{%
  \renewcommand{\contentsname}{%
    \Large\@headingstyling \GetTranslation{toc}%
  }%
}

\addto\captionsenglish{%
  \renewcommand{\listfigurename}{%
    \Large\@headingstyling \GetTranslation{tof}%
  }%
}

\addto\captionsenglish{%
  \renewcommand{\listtablename}{%
    \Large\@headingstyling \GetTranslation{tot}%
  }%
}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

\renewcommand{\familydefault}{%
  \sfdefault%
}

\titleformat{\section}%
  {\LARGE\@headingstyling}%
  {\thesection}%
  {0.5em}%
  {}%

\titleformat{\subsection}
  {\Large\@headingstyling}%
  {\thesubsection}%
  {0.5em}%
  {}%

\titleformat{\subsubsection}%
  {\large\@headingstyling}%
  {\thesubsubsection}%
  {0.5em}%
  {}%

\titleformat{\paragraph}
  {\@headingstyling}%
  {\theparagraph}%
  {0.5em}%
  {}%

\let\ocite\cite
\renewcommand{\cite}[1]{%
  \textsuperscript{\ocite{#1}}%
}
\renewcommand*{\thefootnote}{%
  (\arabic{footnote})%
}
\counterwithin{figure}{section}
\counterwithin{table}{section}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}
\renewcommand{\arraystretch}{1.2}

\newcommand\@group{%
  %
}
\newcommand{\group}[1]{%
  \renewcommand{\@group}{%
    \GetTranslation{gruppe} #1%
  }%
}
\newcommand{\team}[1]{%
  \renewcommand\@group{Team #1}%
}

\fancyhf{}
\lhead{%
  \small%
  \@headingfont%
  \@headingstyling%
  \@group%
}

\newcommand{\@subtitle}{%
  %
}

\newcommand{\subtitle}[1]{%
  \renewcommand\@subtitle{#1}%
}

\newcommand{\@datehook}{%
  %
}
\newcommand{\hasDeadline}{%
  \renewcommand\@datehook{%
    \GetTranslation{abgabe}:\ %
  }%
}
\renewcommand{\and}{%
  \end{tabular}\\%
  \begin{tabular}[t]{@{}l}%
}
\newcommand{\@thankshook}{%
  %
}

\renewcommand{\thanks}[1]{%
  \renewcommand{\@thanks}{#1}%
}

\renewcommand{\@thankshook}{%
  \renewcommand{\thefootnote}{*}%
  \footnote{\@thanks}%
}

\renewcommand\maketitle{%
  \thispagestyle{fancy}%
  %\begin{center}%
  {%
    % title start ---
    \@titlefont%
    \@titlestyling%
    \@title%
    % title end ---
    \par%
    % subtitle start ---
    \normalsize%
    \textnormal{%
      {%
        \@subtitlefont%
        \@subtitlestyling%
        \@subtitle%
        \ifthenelse{%
          \equal{\@subtitle}{}\OR\equal{\@date}{}%
        }{}{ | }%
      \@datehook%
      \@date%
      }%
    }%
    \par%
    % subtitle end ---
  }%
  %\end{center}%
  \vskip 1.5em%
  {%
    \@authorfont
    \@authorstyling
    \normalsize%
    \begin{tabular}[t]{@{}l}%
      \@author%
    \end{tabular}%
  }%
  \par%
  \vskip 2em%
  \renewcommand{\headrulewidth}{0pt}%
  \setcounter{footnote}{0}%
  \pagestyle{plain}%
  % Select helvetica for all other text
  \fontfamily{phv}\selectfont
}
\let\oappendix\appendix
\renewcommand{\appendix}{%
  \renewcommand{\thesection}{%
    \Alph{section}%
  }%
  \oappendix%
}

\definecolor{blue}{RGB}{41 98 255}
\definecolor{blue--light}{RGB}{101 142 255}
\definecolor{blue--dark}{RGB}{24 57 148}
\makeatother
\endinput
