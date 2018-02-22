%% Modification of the original was made by Nabeel Vandayar
%% who is no longer afraid of KJ, but Lara is frightening.
%%
%% original author is anon
%% modified by neliswillers@gmail.com on 20090823
%%
%%
%% This is file `SAIEETranAFR04_as_is',
%% modified from the style file `Article.cls'.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{SAIEETranAFR05}
              [2009/08/17 v5.0
 Standard LaTeX document class]
\usepackage{rawfonts} %!PN
\usepackage{oldlfont} %!PN
\usepackage{fancyhdr}
\usepackage{pslatex}
%
\newcommand\@ptsize{}
\newif\if@restonecol
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt} \def\baselinestretch{2} \@twocolumnfalse \renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}


\ExecuteOptions{a4paper,10pt,oneside,twocolumn,final}
\ProcessOptions
%\usepackage{balance,fancyhdr}
\usepackage{fancyhdr}
\input{size1\@ptsize.clo}
%\setlength\lineskip{1\p@}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
%\renewcommand\baselinestretch{}
\setlength{\parskip}{10pt plus 1pt minus 1pt}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
    T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

% Define some page dimensions
\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\topmargin}{13mm}
\setlength{\oddsidemargin}{19.5mm}
\setlength{\evensidemargin}{19.5mm}
\setlength{\textheight}{243mm}
\setlength{\textwidth}{170mm}
\setlength{\parindent}{0em}
\setlength{\headsep}{24pt}
\setlength{\headheight}{7.62mm}
\setlength{\columnsep}{6mm}


% Disable auto hyphenation
\hyphenpenalty=9000 
\exhyphenpenalty=10000 

%% new definition for \thanks{}
\def\thanks#1{\footnotemark{ }\begingroup\def\protect{\noexpand\protect\noexpand}
\xdef\@thanks{\mbox{}\@thanks\protect\\[.2em] $^{\@thefnmark }\!${\hskip6pt {#1}}}\endgroup}

\def\IFACsymbol#1{\@IFACsymbol{\@nameuse{c@#1}}}

\def\@IFACsymbol#1{\ifcase#1\or * \or ** \or *** \or \dagger \or \dagger\dagger \or \ddagger \or \ddagger\ddagger \or \mathchar "278 \or \mathchar "27B \or \| \else\@ctrerr\fi\relax}

\def\thefootnote{\IFACsymbol{footnote}}
\def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$~ \hss}} 

\newenvironment{inmargins}[1]{\begin{list}{}{
    \leftmargin=#1 \rightmargin=#1 \parsep=0pt
    \partopsep=0pt}\item[]}{\end{list}}

\def\abstract#1{\gdef\@abstract{#1}\par}

\def\keywords#1{\gdef\@keywords{#1}\par}

%\def\copyrighttext#1{\gdef\@copyright{#1}\par}

\def\markboth#1#2{\def\leftmark{\uppercase{#1}}\def\rightmark{\uppercase{#2}}}
\def\footernote#1{\markboth{#1}{#1}}

% Definition for Big letter at the beginning of a paragraph
\def\PARstart#1#2{\begingroup\def\par{\endgraf\endgroup\lineskiplimit=0pt}
    \setbox2=\hbox{\uppercase{#2} }\newdimen\tmpht \tmpht \ht2
    \advance\tmpht by \baselineskip\font\hhuge=cmr10 at \tmpht
    \setbox1=\hbox{{\hhuge #1}}
    \count7=\tmpht \count8=\ht1\divide\count8 by 1000 \divide\count7 by\count8
    \tmpht=.001\tmpht\multiply\tmpht by \count7\font\hhuge=cmr10 at \tmpht
    \setbox1=\hbox{{\hhuge #1}} \noindent \hangindent1.05\wd1
    \hangafter=-2 {\hskip-\hangindent \lower1\ht1\hbox{\raise1.0\ht2\copy1}%
    \kern-0\wd1}\copy2\lineskiplimit=-1000pt}

\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection\quad
        \fi
        ##1}}{}}%
    \def\subsectionmark##1{%
      \markright {%
        \ifnum \c@secnumdepth >\@ne
          \thesubsection\quad
        \fi
        ##1}}}
\else
  \def\ps@headings{%
         \def\@oddfoot{
%         \vbox{\vspace{22pt}\hbox to 2.04\hsize{\hrulefill} %
%         \vspace{-18pt} \hbox to \hsize{\hspace{5pt}\small% 
%Copyright 2009 SAIEE.
%         }\hspace{\fill}}
         }
         
    \let\@oddhead\@empty%
    \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \thesection\quad
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    }
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\small\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\small\@textsuperscript{\small\@thefnmark}}##1}%
%                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{headings}
%   \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \pagestyle{empty}
  \thispagestyle{headings}
}
\def\@maketitle{%
  \newpage
  \null
  \begin{inmargins}{0mm}
  \let \footnote \thanks
  {\large \bfseries\MakeUppercase{\@title} \par}%
  \end{inmargins}
  \vskip -1.5em%
  \begin{inmargins}{0mm}
  {\bf \@author\par}
  \end{inmargins}
  \par
  %\vskip 0.5em%
  \begin{inmargins}{0mm}
  \renewcommand{\baselinestretch}{0.9}\small\it \@thanks
  \end{inmargins}
  %\par
  %\vskip -10pt%
  \vspace{-20pt}
  \begin{inmargins}{0mm}
  \renewcommand{\baselinestretch}{0.9}\small{\bf Abstract:} \@abstract
  \vskip 1em
  \renewcommand{\baselinestretch}{0.9}\small{\bf Key words:} \@keywords
  \vskip 2em
  \end{inmargins}
}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname\nobreakspace\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   %{-3.5ex \@plus -1ex \@minus -.2ex}%
                                   %{2.3ex \@plus.2ex}%
                                   {-0.5ex \@plus -1ex \@minus -.2ex}%
                                   {0.3ex \@plus.2ex}%
                                   {\normalfont\centering\MakeUppercase}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     %{-3.25ex\@plus -1ex \@minus -.2ex}%
                                     %{1.5ex \@plus .2ex}%
                                     {-0.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\normalfont\it}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     %{-3.25ex\@plus -1ex \@minus -.2ex}%
                                     %{1.5ex \@plus .2ex}%
                                     {-0.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\subsubsubsection{\@startsection{subsubsection}{4}{\z@}%
                                     %{-3.25ex\@plus -1ex \@minus -.2ex}%
                                     %{1.5ex \@plus .2ex}%
                                     {-0.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    %{3.25ex \@plus1ex \@minus.2ex}%
                                    %{-1em}%
                                    {0.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}

\renewcommand{\subsubsection}[1]{\vspace{1em}\noindent\protect\it #1{:}\normalfont}
\renewcommand{\subsubsubsection}[1]{\vspace{1em}\hspace{1em}\protect\it #1{:}\normalfont}

\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\if@compatibility
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi

\newtheorem{theorem}{Theorem}

\def\@begintheorem#1#2{\tmpitemindent\itemindent\topsep 0pt\rm\trivlist
    \item[\hskip \labelsep{\indent\it #1\ #2:}]\itemindent\tmpitemindent}
\def\@endtheorem{\endtrivlist\unskip}

\def\QED{\mbox{\rule[0pt]{1.5ex}{1.5ex}}}
\def\proof{\noindent\hspace{2em}{\it Proof: }}
\def\endproof{\hspace*{\fill}~\QED\par\endtrivlist\unskip}

\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\small\centering\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\centering\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 6mm
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{6mm}
\setlength\columnseprule{0\p@}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi

\newcommand\eqnref[1]{Equation (\ref{#1})}
\newcommand\figref[1]{Figure \ref{#1}}
\newcommand\tableref[1]{Table \ref{#1}}
\newcommand\secref[1]{Section \ref{#1}}
\newcommand\chapref[1]{Chapter \ref{#1}}
\newcommand\appref[1]{Appendix \ref{#1}}

\pagenumbering{arabic}

                                               %'Times.sty' style file included
%      T I M E S . S T Y
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{ptm}
\renewcommand{\ttdefault}{pcr}

                                                %'Cite.sty' style file included
%     C I T E . S T Y
%
%     version 3.9  (Nov 2001)
%
%     Compressed, sorted lists of numerical citations: [11-16]
%     see also OVERCITE.STY and DRFTCITE.STY
%
%     Copyright (C) 1989-2001 by Donald Arseneau
%     These macros may be freely transmitted, reproduced, or modified
%     provided that this notice is left intact.
%
%     Instructions follow \endinput.
%  ------------------------------------
% First, ensure that some catcodes have the expected values
\edef\citenum{% to restore funny codes
  \catcode\string`\string ` \the\catcode\string`\`
  \catcode\string`\string ' \the\catcode\string`\'
  \catcode\string`\string = \the\catcode\string`\=
  \catcode\string`\string _ \the\catcode\string`\_
  \catcode\string`\string : \the\catcode\string`\:}
\catcode\string`\`12
\catcode`\'12
\catcode`\=12
\catcode`\_8
\catcode`\:12

%   Handle optional variations:  [verbose,nospace,space,nosort,noadjust],
%   \citeform,\citeleft,\citeright,\citemid,\citepunct,\citedash
%
%   Set defaults:

%   [ on the left.
\@ifundefined{citeleft}{\let\citeleft=[}{}

%   ] on the right:
\@ifundefined{citeright}{\let\citeright=]}{}

%   , (comma space) before note
\@ifundefined{citemid}{\def\citemid{,\penalty\@medpenalty\ }}{}

%   , (comma thin-space) between entries; [nospace] eliminates the space
\@ifundefined{citepunct}{
   \def\citepunct{,\penalty\@m\hskip.13emplus.1emminus.1em}%
 }{}

%   -- (endash) designating range of numbers:
% (using \hbox avoids easy \exhyphenpenalty breaks)
\@ifundefined{citedash}{\def\citedash{\hbox{--}\penalty\@m }}{}

%   Each number left as-is:
\@ifundefined{citeform}{\def\citeform{}}{}

%   Do not repeat warnings.  [verbose] reverses
\let\oc@verbo\relax

\@ifundefined{DeclareOption}{}%
{ \toks@={\def\oc@verbo#1#2#3#4{}}
  \DeclareOption{verbose}{\the\toks@}
  \DeclareOption{nospace}{\def\citepunct{,\penalty\@m}}
  \DeclareOption{space}{\def\citepunct{,\penalty\@highpenalty\ }}
  \DeclareOption{nosort}{\def\@addto@cite@list
   {\edef\@cite@list{\@cite@list \@celt{\@B@citeB}}}}
  \DeclareOption{sort}{\let\@cite@list\relax}% default!
  \DeclareOption{noadjust}{\let\cite@adjust\@empty}% Don't change spaces
  \DeclareOption{adjust}{\let\cite@adjust\relax}% adjust space before [ ]
  \ProvidesPackage{cite}[2001/10/14 \space  v 3.9]
  \ProcessOptions }

%----------------------
% \citen uses \@nocite to ignore spaces after commas, and write the aux file
% \citation. \citen then loops over the citation tags, using \@make@cite@list
% to make a sorted list of numbers.  Finally, \citen executes \@citelist to
% compress ranges of numbers and print the list. \citen can be used by itself
% to give citation numbers without the brackets and other formatting; e.g.,
% "See also ref.~\citen{junk}."
%
\edef\citen{\noexpand\protect \expandafter\noexpand\csname citen \endcsname}

\@namedef{citen }#1{%
\begingroup
\let\@safe@activesfalse\@empty
\@nocite{#1}% ignores spaces, writes to .aux file, returns #1 in \@no@sparg
\@tempcntb\m@ne    % \@tempcntb tracks highest number
\let\@h@ld\relax   % nothing held from list yet
\let\@citea\@empty % no punctuation preceding first
\let\@celt\delimiter % an unexpandable, but identifiable, token
\def\@cite@list{}% % empty list to start
\@for \@citeb:=\@no@sparg\do{\@make@cite@list}% make a sorted list of numbers
% After sorted citelist is made, execute it to compress citation ranges.
\@tempcnta\m@ne    % no previous number
\let\@celt\@compress@cite \@cite@list % output number list with compression
\@h@ld % output anything held over
\endgroup}

% For each citation, check if it is defined and if it is a number.
% if a number: insert it in the sorted \@cite@list
% otherwise: output it immediately.
%
\def\@make@cite@list{%
 \expandafter\let \expandafter\@B@citeB
          \csname b@\@citeb\@extra@b@citeb \endcsname
 \ifx\@B@citeB\relax % undefined: output ? and warning
    \@citea {\bf{?}}\let\@citea\citepunct \G@refundefinedtrue
    \@warning {Citation `\@citeb' on page \thepage\space undefined}%
    \oc@verbo \global\@namedef{b@\@citeb\@extra@b@citeb}{?}%
 \else %  defined               % remove previous line to repeat warnings
    \ifcat _\ifnum\z@<0\@B@citeB _\else A\fi % a positive number, put in list
       \@addto@cite@list
    \else % citation is not a number, output immediately
       \@citea \citeform{\@B@citeB}%
       \let\@citea\citepunct
 \fi\fi}

% Regular definition for adding entry to cite list, with sorting

\@ifundefined{@addto@cite@list}{% sort option either declared or defaulted
  \def\@addto@cite@list{\@tempcnta\@B@citeB \relax
     \ifnum \@tempcnta>\@tempcntb % new highest, add to end (efficiently)
        \edef\@cite@list{\@cite@list \@celt{\@B@citeB}}%
        \@tempcntb\@tempcnta
     \else % arbitrary number: insert appropriately
        \edef\@cite@list{\expandafter\@sort@celt \@cite@list \@gobble @}%
     \fi}
%
% \@sort@celt inserts number (\@tempcnta) into list of \@celt{num} (#1{#2})
% \@celt must not be expandable; list should end with two vanishing tokens.
%
  \def\@sort@celt#1#2{\ifx \@celt #1% parameters are \@celt {num}
       \ifnum #2<\@tempcnta % number goes later in list
          \@celt{#2}%
          \expandafter\expandafter\expandafter\@sort@celt % continue
       \else % number goes here
          \@celt{\number\@tempcnta}\@celt{#2}% stop comparing
    \fi\fi}
}% end sort option definitions
{}% nosort definition is done in options processing

% Check if each number follows previous and can be put in a range
%
\def\@compress@cite#1{%  % This is executed for each number
  \advance\@tempcnta\@ne % Now \@tempcnta is one more than the previous number
  \ifnum #1=\@tempcnta   % Number follows previous--hold on to it
     \ifx\@h@ld\relax    % first pair of successives
        \edef\@h@ld{\@citea \noexpand\citeform{#1}}%
     \else               % compressible list of successives
        \def\@h@ld{\citedash \citeform{#1}}%
     \fi
  \else   %  non-successor -- dump what's held and do this one
     \@h@ld \@citea \citeform{#1}\let\@h@ld\relax
  \fi \@tempcnta#1\let\@citea\citepunct
}

\edef\cite{\noexpand\protect\expandafter\noexpand\csname cite \endcsname}

\@namedef{cite }{\@ifnextchar [{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}

%  Make \@citex refer to \citen:
%
\def\@citex[#1]#2{\@cite{\citen{#2}}{#1}}%

%  Replacement for \@cite which defines the formatting normally done
%  around the citation list.  Minor changes can
%  be done by changing \citeleft, \citemid, and \citeright; but in other
%  cases it might be necessary to redefine the whole macro.
%
\def\@cite#1#2{\leavevmode \cite@adjust
  \citeleft{#1\if@tempswa \citemid #2\fi
  \spacefactor\@m % punctuation in note doesn't affect outside
  }\citeright}

%  Put a penalty before the citation, and adjust the spacing: if no space
%  already or if there is extra space due to some punctuation, then change
%  to one inter-word space.
%
\@ifundefined{cite@adjust}{\def\cite@adjust{%
  \@tempskipa\lastskip \edef\@tempa{\the\@tempskipa}\unskip
  \ifnum\lastpenalty=\z@ \penalty\@highpenalty \fi
  \ifx\@tempa\@zero@skip \spacefactor1001 \fi % if no space before, set flag
  \ifnum\spacefactor>\@m \ \else \hskip\@tempskipa \fi}}{}

\edef\@zero@skip{\the\z@skip}

% \nocite: This is changed to ignore *ALL* spaces and be robust.  The
% parameter list, with spaces removed, is `returned' in \@no@sparg, which
% is used by \citen.
%
\edef\nocite{\noexpand\protect\expandafter\noexpand\csname nocite \endcsname}

\@namedef{nocite }#1{\@bsphack \@nocite{#1}%
 \@for \@citeb:=\@no@sparg\do{\@ifundefined{b@\@citeb\@extra@b@citeb}%
    {\G@refundefinedtrue\@warning{Citation `\@citeb' undefined}%
    \oc@verbo \global\@namedef{b@\@citeb\@extra@b@citeb}{?}}{}}%
 \@esphack}

\def\@nocite#1{\begingroup\let\protect\string% normalize active chars
      \xdef\@no@sparg{\expandafter\@ignsp#1 \: }\endgroup% and remove *ALL* spaces
 \if@filesw \immediate\write\@auxout {\string\citation {\@no@sparg}}\fi}

% for ignoring *ALL* spaces in the input.  This presumes there are no
% \outer tokens and no \if-\fi constructs in the parameter.  Spaces inside
% braces are retained.
%
\def\@ignsp#1 {\ifx\:#1\@empty\else #1\expandafter\@ignsp\fi}

\let\nocitecount\relax  % in case \nocitecount was used for drftcite

\@ifundefined{@extra@b@citeb}{\def\@extra@b@citeb{}}{}
%  in case no fancy bib package (chapterbib) defines this

\@ifundefined{G@refundefinedtrue}{\let\G@refundefinedtrue\relax}{}

\@ifundefined{bbl@cite@choice}{}{\@ifundefined{org@@citex}{}%
  {\let\org@@citex\@citex}}% Prevent stomping by babel

\citenum % execute restore-catcodes

% Aliases:
\let\citenum\citen
\let\citeonline\citen

%\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput
%%



%% End of file `NabsSetup
