%
% This file is copyright (C) 2003 Sam Noble. It may be modified so long
% as my name is not removed and the modifier adds his name to the file.
% Redistribution permitted.
%
% 27 Jan 2004	Sam Noble	Removed tocbibind dependency.
% 04 Dec 2001 	Sam Noble	Class file
% 03 Sep 1995	David Perkinson	Title Page
% Acknowledgements Page, David Perkinson & Sam Noble
% May 2005 Patrick Carlisle Table of contents chapter definition
% 2004-2005 Ben Salzberg (BTS) a variety of tweaks here and in the template
% 2015 Chester Ismay (CII) modified to create R Markdown template
% 2018 James Spencer converted to McMaster template
% Oddities:
%
%   We *ASSUME* that any time \cleardoublepage is called
%  we actually want a blank back side with NO page number/heading
%
%   Minor bug -- seems to be a more general LaTeX thing:
%  If you use \frontmatter \mainmatter without any chapters inbetween
%  be prepared to have the page numbering messed up. Not a big deal,
%  but I'm not sure how to fix it.
%
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Mactemplate}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}
\RequirePackage{fancyhdr}
% Added by CII to produce nice looking code in BeginVerbatimEnvironment
\RequirePackage{fancyvrb}

\usepackage{afterpage}

% Added by CII
\usepackage{ifxetex,ifluatex}
\usepackage{fixltx2e} % provides \textsubscript
\ifnum 0\ifxetex 1\fi\ifluatex 1\fi=0 % if pdftex
  \usepackage[T1]{fontenc}
  \usepackage[utf8]{inputenc}
\else % if luatex or xelatex
  \ifxetex
    \usepackage{mathspec}
    \usepackage{mathtpmx}
    \usepackage{xltxtra,xunicode}
  \else
    \usepackage{fontspec}
  \fi
  \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
  \newcommand{\euro}{€}
\fi

%USED TO STATE NUMBER OF PAGES
\usepackage{lastpage}
%\usepackage{totpages}

% use upquote if available, for straight quotes in verbatim environments
\IfFileExists{upquote.sty}{\usepackage{upquote}}{}
% use microtype if available
\IfFileExists{microtype.sty}{%
\usepackage{microtype}
\UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts
}{}
\usepackage{color}
\newcommand{\VerbBar}{|}
\newcommand{\VERB}{\Verb[commandchars=\\\{\}]}
\DefineVerbatimEnvironment{verbatim}{Verbatim}{xleftmargin=-1em}
\DefineVerbatimEnvironment{Highlighting}{Verbatim}{commandchars=\\\{\}}
% Add ',fontsize=\small' for more characters per line
\usepackage{framed}
\definecolor{shadecolor}{RGB}{248,248,248}
\newenvironment{Shaded}{\begin{snugshade}}{\end{snugshade}}
\newcommand{\KeywordTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
\newcommand{\DataTypeTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{{#1}}}
\newcommand{\DecValTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
\newcommand{\BaseNTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
\newcommand{\FloatTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
\newcommand{\ConstantTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\CharTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\SpecialCharTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\StringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\VerbatimStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\SpecialStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\ImportTok}[1]{{#1}}
\newcommand{\CommentTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
\newcommand{\DocumentationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\AnnotationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\CommentVarTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\OtherTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{{#1}}}
\newcommand{\FunctionTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\VariableTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\ControlFlowTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
\newcommand{\OperatorTok}[1]{\textcolor[rgb]{0.81,0.36,0.00}{\textbf{{#1}}}}
\newcommand{\BuiltInTok}[1]{{#1}}
\newcommand{\ExtensionTok}[1]{{#1}}
\newcommand{\PreprocessorTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
\newcommand{\AttributeTok}[1]{\textcolor[rgb]{0.77,0.63,0.00}{{#1}}}
\newcommand{\RegionMarkerTok}[1]{{#1}}
\newcommand{\InformationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\WarningTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\AlertTok}[1]{\textcolor[rgb]{0.94,0.16,0.16}{{#1}}}
\newcommand{\ErrorTok}[1]{\textcolor[rgb]{0.64,0.00,0.00}{\textbf{{#1}}}}
\newcommand{\NormalTok}[1]{{#1}}

\setlength{\emergencystretch}{3em}  % prevent overfull lines
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
% End of CII add

% This gives us rules below the headers
\AtBeginDocument{%
  \fancyhf{}
  %THIS INCLUDES THE PAGE NUMBER IN THE HEADER
	 \fancyhead[RE]{\@degreeshort \, Thesis - \@authorshort; \@institution \, - \@department}
	 \fancyhead[LO]{\@degreeshort \, Thesis - \@authorshort; \@institution \, - \@department}
  \pagestyle{fancy}

%PAGE NUMBER AT THE BOTTOM CENTRE OF EVERY PAGE
  \cfoot{\thepage}



  \let\oldtheindex=\theindex
  \let\endoldtheindex=\endtheindex
  \renewenvironment{theindex}{
    \oldtheindex
    \addcontentsline{toc}{chapter}{\indexname}
  }{\endoldtheindex}
}

% Stolen from book.cls and modified
\let\RToldchapter\chapter
\renewcommand{\chapter}{\if@openright\RTcleardoublepage
		    \else\clearpage\fi
		    \thispagestyle{empty}%
		    \global\@topnum\z@
		    \@afterindentfalse
		    \secdef\@chapter\@schapter}

% Stolen from book.cls PBC 5/12/05
% Using this to actually show "Chapter 1" in TOC instead of "1"
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                         {\@chapapp\space\thechapter:\space#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\newcommand{\RTcleardoublepage}{
	\clearpage\if@twoside \ifodd\c@page\else
	\thispagestyle{empty}\hbox{}\newpage
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\let\RToldcleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{\RTcleardoublepage}

% adjust margins for binding  (changed 2007-04-24 tgp)
\setlength{\oddsidemargin}{.5in}
\setlength{\evensidemargin}{0in}
\setlength{\textwidth}{6.0in}
\setlength{\textheight}{9.0in}
\setlength\topmargin{0in}
\addtolength\topmargin{-\headheight}
\addtolength\topmargin{-\headsep}



%DEFINING ALL OF THE TITLE PAGE INPUTS

%AUTHOR SHORT
\def\authorshort#1{\gdef \@authorshort{#1}}
\def\@authorshort{\@latex@warning@no@line{No \noexpand\authorshort given}}
%DEGREE
\def\degree#1{\gdef \@degree{#1}}
\def\@degree{\@latex@warning@no@line{No \noexpand\degree given}}
%DEGREE ACRONYM
\def\degreeshort#1{\gdef \@degreeshort{#1}}
\def\@degreeshort{\@latex@warning@no@line{No \noexpand\degreeshort given}}
%INSTITUTION
\def\institution#1{\gdef \@institution{#1}}
\def\@institution{\@latex@warning@no@line{No \noexpand\institution given}}
%DEPARTMENT
\def\department#1{\gdef \@department{#1}}
\def\@department{\@latex@warning@no@line{No \noexpand\department given}}
%NOT NECESSARY
\def\thedivisionof#1{\gdef \@thedivisionof{#1}}
\def\@thedivisionof{The Division of}
\def\approvedforthe#1{\gdef \@approvedforthe{#1}}
\def\@approvedforthe{Division}
%ADVISOR
\def\advisor#1{\gdef \@advisor{#1}}
\def\@advisor{\@latex@warning@no@line{No \noexpand\advisor given}}
%COMMITTEE
\def\committee#1{\gdef \@committee{#1}}
\def\@committee{\@latex@warning@no@line{No \noexpand\committee given}}
%LEVEL OF CURRENT EDUCATION
\def\education#1{\gdef \@education{#1}}
\def\@education{\@latex@warning@no@line{No \noexpand\education given}}
%MONTH OF SUBMISSION
\def\month#1{\gdef \@month{#1}}
\def\@month{\@latex@warning@no@line{No \noexpand\month given}}
%YEAR OF SUBMISSION
\def\year#1{\gdef \@year{#1}}
\def\@year{\@latex@warning@no@line{No \noexpand\year given}}
%CITY
\def\city#1{\gdef \@city{#1}}
\def\@city{\@latex@warning@no@line{No \noexpand\city given}}
%PROVINCE
\def\province#1{\gdef \@province{#1}}
\def\@province{\@latex@warning@no@line{No \noexpand\province given}}
%HALF TITLE NAME
\def\halftitle#1{\gdef \@halftitle{#1}}
\def\@halftitle{\@latex@warning@no@line{No \noexpand\halftitle given}}



%\def\education#1{\gdef \@education{#1} \@educationtrue}
%\glabal\let\@education\@empty
%\newif\if@education
%\@educationfalse

\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\normalfont
      \leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\bfseries \hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

%%% Added by CII %ALL OF THE PREAMBLE SECTIONS
\newenvironment{acknowledgements}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Acknowledgements}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%


% End of CII add
\newenvironment{layabstract}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Lay Abstract}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%


\newenvironment{abstract}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Abstract}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

\newenvironment{declaration}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Declaration of Academic Achievement}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%



\ifx\@pdfoutput\@undefined
  \newcommand{\RTpercent}{\@percentchar\space}
  \AtBeginDvi{\special{!\RTpercent McMaster University thesis template 2018}}
  \AtBeginDvi{\special{rawpostscript \RTpercent McMaster University thesis template 2018}}
\else
  \AtEndDocument{\pdfinfo{/Creator	(McMaster University thesis template 2018)}}
\fi

% I hacked the title page to all be the same font size %%%%%%TITLE PAGE
% as requested by the library, BTS 2005

\renewcommand{\maketitle}{%
  {\pagestyle{empty}
  \fontsize{12}{14}\selectfont
  \begin{titlepage}

  %HALF TITLE PAGE
  \newpage

  \begin{center}
  \null\vfil
  {\fontsize{16}{14}\selectfont\MakeUppercase{\@halftitle}}
  \vfil
  \vfil
  \end{center}

  %TITLE PAGE
  \newpage
  \mbox{}
  \newpage
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks

  \baselineskip = 1.4\baselineskip
  \setbox0=\hbox{}

  \begin{center}
    \setcounter{page}{1}
    \null\vfil
    {\fontsize{16}{14}\selectfont\MakeUppercase{\@title}}
    \vfil

    \vfil
    \centerline{}
    \bigskip
    {\fontsize{16}{14}\selectfont \lineskip .75em
    \begin{tabular}[t]{c}%
      By \MakeUppercase{\@author} ,\ \@education
    \end{tabular}\par}
    \vskip 1.5em

    \vfil
    \vfil


    \vfil

    \vfil
    A Thesis Submitted to the School of Graduate Studies
    In Partial Fulfillment
    of the Requirements for \\
    the Degree
    \@degree
    \vfil

    \bigskip

    {\fontsize{12}{14}\selectfont\@institution \ \copyright \ By \@author ,\ \@month \\ \@year}

  \end{center}\par
  %\end{titlepage}



%% DESCRIPTIVE NOTE
  \cleardoublepage

  {
  \fontsize{12}{12}
  \vfil
  \noindent
  \@institution \ \MakeUppercase{\@degree} \ (\@year) \ \@city ,\ \@province \ (\@department) \\
  %\\
  %\\
  %\\
  \vskip 1cm
  \noindent
  TITLE: \@title \\
  \\
  \noindent
  AUTHOR: \@author \\
  \\
  \noindent
  ADVISORS: \@advisor \\
  \\
  \noindent
  NUMBER OF PAGES: \pageref{doaac} ,\ \pageref{LastPage} \\
  \thispagestyle{plain}
  \vfil
  \par



  	}
  	\end{titlepage}

	}

  \newpage
  \mbox{}
  \thispagestyle{empty}
  \newpage

  }%


% From JSS
% Added by CII
\renewcommand{\title}[1]{\def\@title{#1}}
\newcommand{\Plainauthor}[1]{\def\@Plainauthor{#1}}
\newcommand{\Layabstract}[1]{\def\@Layabstract{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\Acknowledgements}[1]{\def\@Acknowledgements{#1}}
\newcommand{\Declaration}[1]{\def\@Declaration{#1}}





\newcommand{\rtofigure}[5]{
  \begin{figure}
    \caption{#2}
    \centering
    \includegraphics[width=#4\textwidth]{"#1"}
    \caption*{#3}
    \label{#5}
  \end{figure}
}

