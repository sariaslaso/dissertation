%%
%% This is file `york-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% york-thesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2011 by Diane Gall <gall@spookyhill.net>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX version
%% 2003/06/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{york-thesis}
[2011/06/13 v3.6 York University (Toronto, Canada) thesis class]
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{makeidx}
\newboolean{saving}
\DeclareOption{draft}{\setboolean{saving}{true}}
\DeclareOption{final}{\setboolean{saving}{false}
  \PassOptionsToClass{letterpaper,11pt,oneside,%
    onecolumn,final,openany}{report}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{draft}
\ProcessOptions
\LoadClass{report}
\let\oldquote\quote \let\oldendquote\endquote
\let\oldquotation\quotation \let\oldendquotation\endquotation
\let\oldverse\verse \let\oldendverse\endverse
\let\oldbibliography\bibliography
\let\oldendbibliography\endbibliography
\let\oldprintindex\printindex
\newboolean{hasfigures}\setboolean{hasfigures}{false}
\newboolean{hastables}\setboolean{hastables}{false}
\newboolean{masters}\setboolean{masters}{false}
\newcommand{\spacing}[1]{\renewcommand{\baselinestretch}{#1}%
  \large\normalsize}
\def\@removefromreset#1#2{\let\@tempb\@elt
  \expandafter\let\expandafter\@tempa\csname c@#1\endcsname
  \def\@elt##1{\expandafter\ifx\csname c@##1\endcsname\@tempa\else
    \noexpand\@elt{##1}\fi}%
  \expandafter\edef\csname cl@#2\endcsname{\csname cl@#2\endcsname}%
  \let\@elt\@tempb}
\@removefromreset{footnote}{chapter}
\def\resetfootnote{\setcounter{footnote}{0}}
\long\def\@footnotetext#1{%
 \insert\footins{%
  \def\baselinestretch {1}%
  \reset@font\footnotesize
  \interlinepenalty\interfootnotelinepenalty
  \splittopskip\footnotesep
  \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
  \hsize\columnwidth
  \@parboxrestore
  \protected@edef\@currentlabel{%
    \csname p@footnote\endcsname\@thefnmark}%
  \color@begingroup
    \@makefntext{%
      \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
  \color@endgroup}}
\gdef\split@prev{0}
\let\pagefootnoterule\footnoterule
\let\mpfootnoterule\footnoterule
\def\splitfootnoterule{\kern-3\p@ \hrule \kern2.6\p@}
\def\footnoterule{\relax
 \ifx \@listdepth\@mplistdepth
   \mpfootnoterule
 \else
   \ifnum\split@prev=\z@
   \pagefootnoterule
 \else
   \splitfootnoterule
   \fi
   \xdef\split@prev{\the\insertpenalties}%
 \fi
}
\renewcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
  \ifthenelse{\boolean{saving}}{\spacing{1}}{\spacing{1.5}}}
\renewenvironment{bibliography}[1]%
  {\addcontentsline{toc}{chapter}{Bibliography}\oldbibliography {#1}}%
  {\oldendbibliography}
\renewcommand{\printindex}{\newpage%
  \addcontentsline{toc}{chapter}{Index}\oldprintindex}
\def\hugeskip{\vskip 24pt plus 8pt minus 8pt}
\def\@ifdefined#1#2{\@ifundefined{#1}{}{#2}}
\def\@makechapterhead#1{ \vspace*{50pt} { \parindent 0pt
    \raggedright%
    \ifnum \c@secnumdepth > \m@ne \Large\bf
    \thechapter \hskip 1em \fi \Large \bf #1\par
    \nobreak \vskip 40pt } }
\def\@makeschapterhead#1{ \vspace*{50pt} { \parindent 0pt \raggedright
    \Large \bf #1\par
    \nobreak \vskip 40pt }}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                 {-3.5ex \@plus -1ex \@minus -.2ex}%
                                 {2.3ex \@plus.2ex}%
                                 {\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                 {-3.5ex \@plus -1ex \@minus -.2ex}%
                                 {2.3ex \@plus.2ex}%
                                 {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                 {-3.5ex \@plus -1ex \@minus -.2ex}%
                                 {2.3ex \@plus.2ex}%
                                 {\normalfont\normalsize\bfseries}}
\renewcommand\contentsname{Table of Contents}
\renewcommand\listfigurename{List of Figures}
\renewcommand\listtablename{List of Tables}
\renewcommand\bibname{Bibliography}
\newcommand{\contentsheader}[2] { \addtocontents{#1} {
    \centerline{\underline{#2}\protect\hfill%
      \underline{Page}}}}
\renewcommand\tableofcontents { \chapter*{\contentsname}
  \addcontentsline{toc}{chapter}{Table of Contents}
  \@starttoc{toc}}
\renewcommand\listoffigures { \chapter*{\listfigurename}
  \addcontentsline{toc}{chapter}{List of Figures}
  \@starttoc{lof}}
\renewcommand\listoftables { \chapter*{\listtablename}
  \addcontentsline{toc}{chapter}{List of Tables}
  \@starttoc{lot}}
\ifthenelse{\boolean{saving}} {%
  \setlength {\topmargin}{0.0in}
  \setlength {\textheight}{\paperheight-2.5in}
  \setlength {\oddsidemargin}{0.0in}
  \setlength {\evensidemargin}{0.0in}
  \setlength {\textwidth}{\paperwidth-2in}
  \spacing{1}
  } {%
  \setlength {\topmargin}{0.15in}
  \setlength {\textheight}{\paperheight-2.5in}
  \setlength {\oddsidemargin}{0.1in}
  \setlength {\evensidemargin}{0.1in}
  \setlength {\textwidth}{\paperwidth-2.15in}
  \setlength {\footskip}{0.4in}
  \spacing{1.5}
  \renewenvironment{quote}{\oldquote\spacing{1}}%
       {\oldendquote\spacing{1.5}}
  \renewenvironment{quotation}{\oldquotation\spacing{1}}%
       {\oldendquotation\spacing{1.5}}
  \renewenvironment{verse}{\oldverse\spacing{1}}%
       {\oldendverse\spacing{1.5}}}
\setlength {\footnotesep}{14pt}
\setlength {\headheight}{0in}
\setlength {\headsep}{0in}
\def\department#1{\gdef\@department{#1}}
\def\masterof#1{\gdef\@masterof{#1}}
\def\abstractfile#1{\gdef\@abstractfile{#1}}
\def\dedicationfile#1{\gdef\@dedicationfile{#1}}
\def\acknowledgementsfile#1{\gdef\@acknowledgementsfile{#1}}
\def\prefacefile#1{\gdef\@prefacefile{#1}}
\def\abbreviationsfile#1{\gdef\@abbreviationsfile{#1}}
\def\degreename#1{\gdef\@degreename{#1}}
\gdef\@author{YOUR FULL NAME} \gdef\@title{{\bf THE TITLE OF YOUR
    WORK}} \gdef\@date{\number\year} \gdef\@department{PHILOSOPHY}
\gdef\@masterof{Arts}
\ifthenelse{\boolean{masters}}{\gdef\@degreename{MASTER}}%
  {\gdef\@degreename{DOCTOR}}
\def\makefrontmatter{%
  \pagestyle {empty}
  \pagenumbering {roman}
  \maketitlepage
  \setcounter {page} {2}
  \@ifdefined {@abstractfile}{\makeabstract}
  \pagestyle {fancy}
  \@ifdefined {@dedicationfile}{\makededication}
  \@ifdefined {@acknowledgementsfile}{\makeacknowledgements}
  \tableofcontents
  \ifthenelse{\boolean{hastables}}{\listoftables}{}
  \ifthenelse{\boolean{hasfigures}}{\listoffigures}{}
  \@ifdefined{@prefacefile}{\makepreface}
  \@ifdefined{@abbreviationsfile}{\makeabbreviations}
  \newpage
  \pagenumbering {arabic}
  \setcounter {page}{1}}
\def\maketitlepage{
  \vspace*{.85in}
  \begin{center}
    \spacing{1}
    \textbf{\MakeUppercase{\@title}}
    \hugeskip
    \hugeskip
    \hugeskip
    {\bigskip \MakeUppercase{\@author}}
  \end{center}
  \hugeskip \hugeskip \hugeskip \hugeskip \hugeskip \hugeskip
  {\spacing{1}
    \begin{center}
      \ifmasters A THESIS \else A DISSERTATION \fi SUBMITTED TO \\
      THE FACULTY OF GRADUATE STUDIES \\
      IN PARTIAL FULFILLMENT OF THE REQUIREMENTS \\
      FOR THE DEGREE OF \\
      \ifmasters \MakeUppercase{\@degreename} OF
      \MakeUppercase{\@masterof}
      \else
      \MakeUppercase{\@degreename} OF PHILOSOPHY \fi \\
      \hugeskip \hugeskip
      GRADUATE PROGRAM IN \MakeUppercase{\@department} \\
      YORK UNIVERSITY \\
      TORONTO, ONTARIO \\
      \hugeskip \hugeskip \hugeskip
      \@date \\
      \hugeskip \hugeskip \hugeskip
      $\copyright$\ \@author, \number\year
    \end{center}}
  \newpage }
\def\makeabstract{%
  \chapter*{Abstract}
  \addcontentsline {toc}{chapter}{Abstract}
  \noindent
  \@input{\@abstractfile}}
\def\makededication{%
  \newpage
  \@input{\@dedicationfile}}
\def\makepreface{%
  \chapter*{Preface}
  \addcontentsline {toc}{chapter}{Preface}
  \noindent
  \@input{\@prefacefile}}
\def\makeabbreviations{%
  \chapter*{List of Abbreviations}
  \addcontentsline{toc}{chapter}{List of Abbreviations}
  \noindent
  \@input{\@abbreviationsfile}}
\def\makeacknowledgements{%
  \chapter*{Acknowledgements}
  \addcontentsline{toc}{chapter}{Acknowledgements}
  \noindent
  \@input{\@acknowledgementsfile}}
\newlength{\epigraphwidth}\setlength{\epigraphwidth}{.8\columnwidth}
\newlength{\epigraphrule}\setlength{\epigraphrule}{.4\p@}
\newcommand{\@epirule}{\rule[.5ex]{\epigraphwidth}{\epigraphrule}}
\newcommand{\epigraph}[2]%
  {\item #1\vspace{-12pt}\begin{flushright}#2\end{flushright}}
\newcommand{\epigraphlabel}[1]{\hfill}
\newenvironment{epigraphs}{%
    \begin{flushright}
      \begin{minipage}{\epigraphwidth}
        \list{}%
     {\itemindent\z@ \labelwidth\z@ \labelsep\z@
      \leftmargin\z@ \rightmargin\z@
      \let\makelabel\epigraphlabel}}%
  {\endlist\vspace{-18pt}\@epirule\vspace{24pt}\end{minipage}\end{flushright}}
\let\oldepigraphs\epigraphs \let\oldendepigraphs\endepigraphs
\ifthenelse{\boolean{saving}}{}{%
  \renewenvironment{epigraphs}{\oldepigraphs\spacing{1}}%
       {\oldendepigraphs\spacing{1.5}}
}
\newenvironment{fquote}%
  {\oldquote\footnotesize}%
  {\oldendquote\normalsize}
\newenvironment{fquotation}{\oldquotation\footnotesize}%
     {\oldendquotation\normalsize}
\newenvironment{fverse}{\oldverse\footnotesize}%
     {\oldendverse\normalsize}
\newcommand{\threestars}{\begin{center}%
  *\hspace{.5in}*\hspace{.5in}*\hspace{.5in}\end{center}}
\endinput
%%
%% End of file `york-thesis.cls'.
