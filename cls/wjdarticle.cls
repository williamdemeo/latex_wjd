%%
%% This is file `wjdarticle.cls'
%%
%%% ====================================================================
%%% @LaTeX-file{
%%%   filename  = "wjdarticle.cls",
%%%   version   = "1.01",
%%%   date      = "2003/09/12",
%%%   author    = "William DeMeo",
%%%   email     = "williamdemeo@yahoo.com"
%%% }
%%% ====================================================================
%% Example usage:
%
%  \documentclass[wjd]{wjdarticle}
%  
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wjdarticle}[2003/09/12 LaTeX class for article with wjd defitions]
\LoadClass{article}
\RequirePackage{theorem,amsmath,amssymb,color,boxedminipage,acronym,epsfig,times}

% -COUNTERS-
%\renewcommand\theequation{\thesubsubsection-\@arabic\c@equation}%
%\renewcommand\thefigure{\thesubsubsection-\@arabic\c@figure}%
%\renewcommand\thetable{\thesubsubsection-\@arabic\c@table}%

% -OPTIONS-
% --subsubsubsections--
\DeclareOption{subsubsubsections}{
%% First option: create new subsubsubsection command and counter
  \newcounter {subsubsubsection}[subsubsection]
  \def\subsubsubsectionmark#1{}
  \def\thesubsubsubsection{\thesubsubsection .\arabic{subsubsubsection}}
  \def\subsubsubsection{\@startsection{subsubsubsection}{4}{\z@}%
                                      {-3.25ex\@plus -1ex \@minus -.2ex}%
                                      {1.5ex \@plus .2ex}%
                                      {\normalsize\bf}}
  \def\l@subsubsubsection{\@dottedtocline{4}{4.8em}{4.2em}}
  \newcounter {newparagraph}[subsubsubsection]
  \renewcommand\theparagraph{\thesubsubsubsection.\@arabic\c@newparagraph}
  \renewcommand\paragraph{\@startsection{paragraph}{5}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
  \renewcommand\subparagraph{\@startsection{subparagraph}{6}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
  \renewcommand*\l@paragraph{\@dottedtocline{5}{7.0em}{4.1em}}
  \renewcommand*\l@subparagraph{\@dottedtocline{6}{10em}{5em}}
  \setcounter{secnumdepth}{4}
  \setcounter{tocdepth}{4}
}

\DeclareOption{boldvectors}{
% redefines the \vec accent to a bold character - if desired
\def\fig@type{arrow}% temporarily abused
\ifx\vec@style\fig@type\else
\@ifundefined{vec@style}{%
 \def\vec#1{\ensuremath{\mathchoice
                     {\mbox{\boldmath$\displaystyle\mathbf{#1}$}}
                     {\mbox{\boldmath$\textstyle\mathbf{#1}$}}
                     {\mbox{\boldmath$\scriptstyle\mathbf{#1}$}}
                     {\mbox{\boldmath$\scriptscriptstyle\mathbf{#1}$}}}}%
}
{\def\vec#1{\ensuremath{\mathchoice
                     {\mbox{\boldmath$\displaystyle#1$}}
                     {\mbox{\boldmath$\textstyle#1$}}
                     {\mbox{\boldmath$\scriptstyle#1$}}
                     {\mbox{\boldmath$\scriptscriptstyle#1$}}}}%
}
\fi
}
% --wjd definitions--
\DeclareOption{wjd}{\input{wjd.def}}
\DeclareOption{wjdthms}{\input{wjdthms.def}}

\ProcessOptions\relax


%% End of file `wjdartile.cls'


%
% THEOREM environments are now defined in wjdthms, which can be included as an
% option, e.g.,
%
%         \documentclass[wjd,wjdthms]{wjdarticle}
%
% So the following is,
%
%   OBSOLETE STUFF:
%
%\usepackage{theorem}
%{\theorembodyfont{\rmfamily}
% \newtheorem{lemma}{Lemma}[section]
% \newtheorem{cor}{Corollary}[section]
% \newtheorem{prop}{Proposition}[section]
% \newtheorem{fact}{Fact}[section]
% \newtheorem{example}{Example}[section] 
% \newtheorem{exercise}{Exercise}[section]
% {\theoremstyle{marginbreak}  
%   \newtheorem{define}{}  % This definition style is for the glossary
%    \newtheorem{Theorem}{Theorem}[subsection]
% }
%% {\theoremstyle{break}  %% causes theorem to be started on new line
%   \newtheorem{definition}{Definition}[section]
%   \newtheorem{theorem}{Theorem}[section]
%% }
%}
%\renewcommand{\thedefine}{}

%{\theorembodyfont{\small\rmfamily} 
% {\theoremstyle{margin}
%%  {\setlength\theorempreskipamount{5pt plus 1.5pt minus 1.5pt}
%    \newtheorem{proof}{Proof:}
%    \newtheorem{solution}{Solution:}
%    \newtheorem{remark}{Remark:}
%%  }
% }
%}
%\renewcommand{\theproof}{}
%\renewcommand{\thesolution}{}
%\renewcommand{\theremark}{}

%% end of proof symbol
%\newcommand\qedsymbol{\hbox{\rlap{$\sqcap$}$\sqcup$}}
%\newcommand\qed{\relax\ifmmode\else\unskip\quad\fi\qedsymbol}
%\newcommand\smartqed{\renewcommand\qed{\relax\ifmmode\qedsymbol\else
%  {\unskip\nobreak\hfil\penalty50\hskip1em\null\nobreak\hfil\qedsymbol
%  \parfillskip=\z@\finalhyphendemerits=0\endgraf}\fi}}

%\smartqed





