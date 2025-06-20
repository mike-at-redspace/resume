%% Start of file `awesome-cv.cls'.
% Awesome CV Class File
%
% This class has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Author:
% Claud D. Park <posquit0.bj@gmail.com>
% http://www.posquit0.com
%
% Notes:
% 1) This class file defines the structure and layout of the template file (cv.tex, resume.tex).
% 2) It has been written in such a way that under most circumstances you
% should not need to edit it.
%
% Class license:
% LPPL v1.3c (http://www.latex-project.org/lppl)
%


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{awesome-cv}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to manage math fonts
\RequirePackage{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
% \RequirePackage{fontawesome}
\RequirePackage[default,opentype]{sourcesanspro}
% Needed for the photo ID
\RequirePackage[skins]{tcolorbox}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}


%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure a directory location for fonts(default: 'fonts/')
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout - professional print margins
% Configure page margins with geometry for optimal print appearance
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm, includehead}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors - improved contrast for print
\definecolor{darktext}{HTML}{2B2B2B}
\colorlet{text}{darktext}
\colorlet{graytext}{darkgray}
\colorlet{lighttext}{gray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}

% Boolean value to switch section color highlighting
\newbool{acvSectionColorHighlight}
\setbool{acvSectionColorHighlight}{true}

% Awesome section color
\newcommand*{\sectioncolor}[1]{%
  \ifbool{acvSectionColorHighlight}{{\color{awesome}#1}}{#1}
}

%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
% Set the FontAwesome font to be up-to-date.
\newfontfamily\FA[Path=\@fontdir]{FontAwesome}

% Define FontAwesome icons manually since we're not using the fontawesome package
\newcommand*{\faPhone}{{\FA \symbol{"F095}}}
\newcommand*{\faEnvelopeO}{{\FA \symbol{"F003}}}
\newcommand*{\faHome}{{\FA \symbol{"F015}}}
\newcommand*{\faGithub}{{\FA \symbol{"F09B}}}
\newcommand*{\faGitlab}{{\FA \symbol{"F296}}}
\newcommand*{\faStackOverflow}{{\FA \symbol{"F16C}}}
\newcommand*{\faLinkedin}{{\FA \symbol{"F0E1}}}
\newcommand*{\faTwitter}{{\FA \symbol{"F099}}}
\newcommand*{\faSkype}{{\FA \symbol{"F17E}}}
\newcommand*{\faReddit}{{\FA \symbol{"F1A1}}}
\newcommand*{\faXingSquare}{{\FA \symbol{"F169}}}
\newcommand*{\faCodepen}{{\FA \symbol{"F1CB}}}
\newcommand*{\faCode}{{\FA \symbol{"F121}}}

% Set Monaspace fonts for modern, technical look
% Monaspace Neon for headings & name (clean, geometric, bold)
\newfontfamily\headerfont[
  Path=\@fontdir,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-SemiBold,
  ItalicFont=*-Regular,
  BoldItalicFont=*-Bold,
]{MonaspaceNeon}

\newfontfamily\headerfontlight[
  Path=\@fontdir,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-SemiBold,
  ItalicFont=*-Regular,
  BoldItalicFont=*-SemiBold,
]{MonaspaceNeon}

% Monaspace Krypton for body text (most readable, low contrast)
\newfontfamily\bodyfont[
  Path=\@fontdir,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-Medium,
  ItalicFont=*-Regular,
  BoldItalicFont=*-Medium,
]{MonaspaceKrypton}

\newfontfamily\bodyfontlight[
  Path=\@fontdir,
  Extension=.otf,
  UprightFont=*-Light,
  BoldFont=*-Regular,
  ItalicFont=*-Light,
  BoldItalicFont=*-Regular,
]{MonaspaceKrypton}

% Monaspace Argon for meta info, dates, locations (technical, narrow)
\newfontfamily\metafont[
  Path=\@fontdir,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-Medium,
  ItalicFont=*-Italic,
  BoldItalicFont=*-Medium,
]{MonaspaceArgon}

% Monaspace Xenon for highlights, quotes, special text (expressive)
\newfontfamily\accentfont[
  Path=\@fontdir,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-Regular,
  ItalicFont=*-Italic,
  BoldItalicFont=*-Italic,
]{MonaspaceXenon}

% Legacy font commands for compatibility
\newcommand*{\footerfont}{\metafont}

%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements with tight spacing and hierarchy
% For fundamental structures - name and header (compact header as requested)
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{28pt}{0.9em}\headerfont\bfseries\color{text} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{28pt}{0.9em}\headerfont\bfseries\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{9pt}{1.0em}\metafont\color{awesome} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1.0em}\metafont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{8pt}{1.0em}\metafont\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1.0em}\accentfont\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{0.9em}\metafont\color{lighttext} #1}}

% Section headers - improved hierarchy and print-friendly styling
\newcommand*{\sectionstyle}[1]{{\fontsize{14pt}{0.9em}\headerfont\bfseries\color{text}\sectioncolor{#1}}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{0.9em}\headerfont\bfseries\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{10pt}{1.1em}\bodyfontlight\upshape\color{text}}

% For elements of entry - tighter line heights and stronger hierarchy
\newcommand*{\entrytitlestyle}[1]{{\fontsize{12pt}{1.0em}\headerfont\bfseries\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{10pt}{1.0em}\metafont\bfseries\color{graytext} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{9pt}{0.9em}\metafont\itshape\color{graytext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{0.9em}\metafont\itshape\color{awesome} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{10pt}{1.1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\metafont\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\metafont\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\metafont\slshape\color{awesome} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorpositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{9pt}{1em}\metafont\color{graytext} #1}}
\newcommand*{\honorlocationstyle}[1]{{\fontsize{9pt}{1em}\metafont\slshape\color{awesome} #1}}

% For elements of skill - stronger emphasis and tighter spacing
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{1.0em}\headerfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{10pt}{1.0em}\bodyfont\color{text} #1}}


%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------
% Define photo ID
% Usage: \photo[circle|rectangle,edge|noedge,left|right]{<path-to-image>}
\newcommand{\photo}[2][circle,edge,left]{%
  \def\@photo{#2}
  \@for\tmp:=#1\do{%
    \ifthenelse{\equal{\tmp}{circle} \or \equal{\tmp}{rectangle}}%
      {\let\@photoshape\tmp}{}%
    \ifthenelse{\equal{\tmp}{edge} \or \equal{\tmp}{noedge}}%
      {\let\@photoedge\tmp}{}%
    \ifthenelse{\equal{\tmp}{left} \or \equal{\tmp}{right}}%
      {\let\@photoalign\tmp}{}%
  }%
}
\def\@photoshape{circle}
\def\@photoedge{edge}
\def\@photoalign{left}

% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Define writer's position
% Usage: \name{<position>}
\newcommand*{\position}[1]{\def\@position{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's gitlab (optional)
% Usage: \gitlab{<gitlab-nick>}
\newcommand*{\gitlab}[1]{\def\@gitlab{#1}}

% Defines writer's stackoverflow profile (optional)
% Usage: \stackoverflow{<so userid>}{<so username>}
%   e.g.https://stackoverflow.com/users/123456/sam-smith
%       would be \stackoverflow{123456}{sam-smith}
\newcommand*{\stackoverflow}[2]{\def\@stackoverflowid{#1}\def\@stackoverflowname{#2}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Usage: \twitter{<twitter handle>}
\newcommand*{\twitter}[1]{\def\@twitter{#1}}

% Defines writer's skype (optional)
% Usage: \skype{<skype account>}
\newcommand*{\skype}[1]{\def\@skype{#1}}

% Defines writer's reddit (optional)
% Usage: \reddit{<reddit account>}
\newcommand*{\reddit}[1]{\def\@reddit{#1}}

% Defines writer's xing (optional)
% Usage: \xing{<xing name>}
\newcommand*{\xing}[1]{\def\@xing{#1}}

% Defines writer's twitter (optional)
% Defines writer's extra informations (optional)
% Usage: \extrainfo{<extra informations>}
\newcommand*{\extrainfo}[1]{\def\@extrainfo{#1}}

% Defines writer's quote (optional)
% Usage: \quote{<quote>}
\renewcommand*{\quote}[1]{\def\@quote{#1}}


%-------------------------------------------------------------------------------
%                Commands for extra
%-------------------------------------------------------------------------------
%% Define helper macros a user can change easily
% Header - balanced spacing for professional print layout
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{2mm}
\newcommand{\acvHeaderAfterPositionSkip}{1.5mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{4mm}
\newcommand{\acvHeaderAfterQuoteSkip}{4mm}

% Others - balanced spacing for professional print layout
\newcommand{\acvSectionTopSkip}{2mm}
\newcommand{\acvSectionContentTopSkip}{1mm}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][C]{%
  \newcommand*{\drawphoto}{%
    \ifthenelse{\isundefined{\@photo}}{}{%
      \newlength{\photodim}
      \ifthenelse{\equal{\@photoshape}{circle}}%
        {\setlength{\photodim}{1.3cm}}%
        {\setlength{\photodim}{1.8cm}}%
      \ifthenelse{\equal{\@photoedge}{edge}}%
        {\def\@photoborder{darkgray}}%
        {\def\@photoborder{none}}%
      \begin{tikzpicture}%
        \node[\@photoshape, draw=\@photoborder, line width=0.3mm, inner sep=\photodim, fill overzoom image=\@photo] () {};
      \end{tikzpicture}
    }%
  }
  \newlength{\headertextwidth}
  \newlength{\headerphotowidth}
  \ifthenelse{\isundefined{\@photo}}{
    \setlength{\headertextwidth}{\textwidth}
    \setlength{\headerphotowidth}{0cm}
  }{%
    \setlength{\headertextwidth}{0.76\textwidth}
    \setlength{\headerphotowidth}{0.24\textwidth}
  }%
  \begin{minipage}[c]{\headerphotowidth}%
    \ifthenelse{\equal{\@photoalign}{left}}{\raggedright\drawphoto}{}
  \end{minipage}
  \begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
    \\[\acvHeaderAfterNameSkip]%
    \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}%
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
    \headersocialstyle{%
      \newbool{isstart}%
      \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@mobile}}%
        {}%
        {%
          \faPhone\acvHeaderIconSep\@mobile%
          \setbool{isstart}{false}%
        }%
      \ifthenelse{\isundefined{\@email}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{mailto:\@email}{\faEnvelopeO\acvHeaderIconSep\@email}%
        }%
      \ifthenelse{\isundefined{\@homepage}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}%
        }%
      \ifthenelse{\isundefined{\@github}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://github.com/\@github}{\faGithub}%
        }%
      \ifthenelse{\isundefined{\@linkedin}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.linkedin.com/in/\@linkedin}{\faLinkedin}%
        }%
      \ifthenelse{\isundefined{\@gitlab}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://gitlab.com/\@gitlab}{\faGitlab}%
        }%
      \ifthenelse{\isundefined{\@stackoverflowid}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow}%
        }%
      \ifthenelse{\isundefined{\@twitter}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://twitter.com/\@twitter}{\faTwitter}%
        }%
      \ifthenelse{\isundefined{\@skype}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \faSkype\acvHeaderIconSep\@skype%
        }%
      \ifthenelse{\isundefined{\@reddit}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.reddit.com/user/\@reddit}{\faReddit}%
        }%
      \ifthenelse{\isundefined{\@xing}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.xing.com/profile/\@xing}{\faXingSquare}
        }%
      \ifthenelse{\isundefined{\@extrainfo}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \@extrainfo%
        }%
    } \\[\acvHeaderAfterSocialSkip]%
    \ifthenelse{\isundefined{\@quote}}%
      {}%
      {\headerquotestyle{\@quote\\}\vspace{\acvHeaderAfterQuoteSkip}}%
  \end{minipage}%
  \begin{minipage}[c]{\headerphotowidth}%
    \ifthenelse{\equal{\@photoalign}{right}}{\raggedleft\drawphoto}{}
  \end{minipage}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{\footerstyle{#1}}
  \fancyfoot[C]{\footerstyle{#2}}
  \fancyfoot[R]{\footerstyle{#3}}
}

% Define a section for CV with improved professional divider
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \vspace{0.5mm}
  \color{lightgray}\vhrulefill{0.5pt}
  \vspace{1mm}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \subsectionstyle{#1}
  \phantomsection
}

% Define a paragraph for CV
\newenvironment{cvparagraph}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \paragraphstyle
}{%
  \par
  \vspace{2mm}
}

% Define an environment for cventry
\newenvironment{cventries}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{%
  \end{center}
}
% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
\newcommand*{\cventry}[5]{%
  \vspace{-1mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifempty{#1#3#4}
      {\entrytitlestyle{#2} & \\[0.2mm]
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}}}
      {\ifempty{#2#3}
          {\entrypositionstyle{#1} & \entrydatestyle{#4} \\[0.2mm]}
          {\entrytitlestyle{#2} \,\textbar\, \entrypositionstyle{#1} & \entrylocationstyle{#3} \\[0.2mm]
            & \entrydatestyle{#4} \\[0.2mm]}
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}}}
  \end{tabular*}%
  \vspace{0.5mm}
}

% Define an environment for cvsubentry
\newenvironment{cvsubentries}{%
  \begin{center}
}{%
  \end{center}
}
% Define a subentry of cv information
% Usage: \cvsubentry{<position>}{<title>}{<date>}{<description>}
\newcommand*{\cvsubentry}[4]{%
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \setlength\leftskip{0.2cm}
    \subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#3}}{}
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
    \ifthenelse{\equal{#4}{}}
      {}
      {\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#4}} \\}
  \end{tabular*}
}

% Define an environment for cvhonor
\newenvironment{cvhonors}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{\textwidth - 4.0cm} R{2.5cm}}
}{%
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(honor, award or something else)
% Usage: \cvhonor{<position>}{<title>}{<location>}{<date>}
\newcommand*{\cvhonor}[4]{%
  \honordatestyle{#4} & \honorpositionstyle{#1}, \honortitlestyle{#2} & \honorlocationstyle{#3} \\
}

% Define an environment for cvskill with better spacing and proper margins
\newenvironment{cvskills}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1mm}
  \begin{center}
    \setlength\tabcolsep{1ex}
    \setlength{\extrarowheight}{1pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} r L{\textwidth * \real{0.7}}}
}{%
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(skill) with improved spacing and grouping
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{%
	\skilltypestyle{#1} & \skillsetstyle{#2} \\[0.5mm] % Tight spacing between skill rows
}

% Define an environment for cvitems with professional bullet styling
\newenvironment{cvitems}{%
  \vspace{-1mm}
  \begin{justify}
  \begin{itemize}[leftmargin=5ex, rightmargin=3ex, parsep=0pt, itemsep=1pt]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\textcolor{awesome}{\textbullet}}
}{%
  \end{itemize}
  \end{justify}
  \vspace{1mm}
}