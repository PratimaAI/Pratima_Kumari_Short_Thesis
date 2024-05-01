%% Identification part:

\NeedsTeXFormat{LaTeX2e}[1995/12/01]  % Any version, really!

\ProvidesClass{ifimaster}[2020 OsloMet document class]

%% Initial code part:

%% Option declaration part:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ExecuteOptions{}
\ProcessOptions \relax

%% Base class load part:

\LoadClass[a4paper,11pt,twoside,openright]{report}

%% Adjustments:

%\addtolength{\topmargin}{-2\baselineskip}
%\addtolength{\textheight}{4\baselineskip}
%\addtolength{\evensidemargin}{-5mm}  % Compensate for binding
%\addtolength{\oddsidemargin}{5mm}

\usepackage{geometry}
 \geometry{
 a4paper,
 total={160mm,247mm},
 left=25mm,
 top=25mm,
 }


\pretolerance = 2000
\tolerance = 5000   \hbadness = \tolerance

%% Required packages:

\IfFileExists{uiofont.sty}% Official text font (if installed)
  {\RequirePackage{uiofont}}%
  {\RequirePackage{mathpazo}}

%% Document parts:

\newcommand{\frontmatter}{\cleardoublepage \pagenumbering{roman}}
\newcommand{\mainmatter}{\cleardoublepage \pagenumbering{arabic}}
\newcommand{\backmatter}{\cleardoublepage}

\endinput