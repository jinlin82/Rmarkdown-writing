%% 
%% This is file `znufethesis.cls',
%% generated with the docstrip utility.
%% 
%% The original source files were:
%% 
%% znufethesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2012 by Joseph Pan <cs.wzpan@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% Any Suggestions : LiuBenYuan <liubenyuan@gmail.com>
%% Thanks Xue Ruini <xueruini@gmail.com> for the thuthesis class!
%% Thanks sofoot for the original NUDT paper class!
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{znufethesis}


% -------------------------------------Class 选项--------------------------------
\newif\ifismaster\ismastertrue
\newif\ifisttf\isttftrue
\DeclareOption{master}{\ismastertrue}
\DeclareOption{doctor}{\ismasterfalse}
\newif\ifisanon\isanonfalse
\DeclareOption{anon}{\isanontrue}
\newif\ifistwoside\istwosidefalse
\DeclareOption{twoside}{\istwosidetrue}
\DeclareOption{ttf}{\isttftrue}
\DeclareOption{otf}{\isttffalse}
\newif\ifisvista\isvistafalse
\DeclareOption{vista}{\isvistatrue}
\newif\ifischapter\ischapterfalse
\DeclareOption{chapterhead}{\ischaptertrue}
\DeclareOption*{\PackageWarning{znufethesis}{Unknown Option '\CurrentOption'}}
\ProcessOptions\relax
\RequirePackage{ifthen,calc}
\ifistwoside
\LoadClass[a4paper,12pt,openany,twoside]{book}
\else
\LoadClass[a4paper,12pt,openany]{book}
\fi
% -------------------------------------------------------------------------------

% -----------------------------------加载宏包------------------------------------
\RequirePackage[includeheadfoot]{geometry}
\RequirePackage[center,pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{subfig}
\RequirePackage[doublespacing]{setspace}
\setstretch{1.5}


\RequirePackage[no-math,BoldFont,SlantFont]{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{CJKulem}
\RequirePackage{indentfirst}

% -------------------------- 参考文献 ------------------------------------------
\RequirePackage[numbers,sort&compress,square]{natbib}
\setlength{\bibsep}{0ex}                        % 参考文献中行距缩小

\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} % 上标形式引用
\let\oldcitep\citep                            % 使用上标形式
\newcommand{\citen}[2][]{\textsuperscript{\oldcitep{#2}#1}}
\renewcommand{\citep}{\citen}
% \renewcommand{\citep}{\nocite}   % 学校论文要求正文不出现引用样式

% -------------------Tools------------------------------------------------------
\RequirePackage{graphicx}                           % 支持图形
\RequirePackage{url}                                    % 对网址进行处理
\RequirePackage{color}                                % 颜色支持
\RequirePackage{xcolor}
\RequirePackage[ocgcolorlinks,colorlinks=true,citecolor=blue, linkcolor=blue]{hyperref}  %各种引用、书签生成

% \hypersetup{hidelinks}    % 打印用黑色
\RequirePackage[noae]{Sweave}                  % Rnw 支持
\setkeys{Gin}{width=0.8\textwidth}            % 更改Sweave默认图的宽度
\RequirePackage{svn-multi}                    % 在文中加入svn属性信息

%% ----------------------------- Footnote ---------------------------------
%% 每页开始标号，用圆圈
% \RequirePackage[perpage,symbol*]{footmisc}               % 支持带圈数字
% % \DefineFNsymbols{circled}{{①}{②}{③}{④}{⑤}{⑥}{⑦}{⑧}{⑨}{⑩}}
% \RequirePackage{pifont}                       % 支持带圈字符
% \renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}

%% 全文统一编号，用数字
\RequirePackage{footmisc}
\RequirePackage{chngcntr}
\counterwithout*{footnote}{chapter}

% -------------------Math-------------------------------------------------
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{bm}                 % 数学公式中bold支持
\RequirePackage{amsfonts}
\RequirePackage[retainorgcmds]{IEEEtrantools}  % IEEE数学排版
% \RequirePackage[varg]{txfonts}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
% \RequirePackage{txfonts}          % 一些数学符号用到，支持Times字体，会变丑
% \RequirePackage[sloped]{fourier}  % 它可将正文字体和数学式字符转变为乌托邦字体字符
% \RequirePackage[OT1]{fontenc}     % 乌托邦字体字符中文支持
% \RequirePackage{mathbbold}
\newcommand{\ud}{\,\mathrm{d}}             % 积分中的 d，前面有一个空格

% -----------------Table--------------------------------------------------
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{array}              % 提供表格中每一列的宽度及位置支持
\RequirePackage{siunitx}
\RequirePackage{multirow}
\RequirePackage{rotating}
\RequirePackage{float}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\setlength{\extrarowheight}{-1pt}
\RequirePackage{slashbox}
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{dcolumn}

\RequirePackage{wrapfig}
\RequirePackage{colortbl}
\RequirePackage{pdflscape}
\RequirePackage{pdfpages}
\RequirePackage{tabu}
\RequirePackage{threeparttable}
\RequirePackage{threeparttablex}
\RequirePackage[normalem]{ulem}
\RequirePackage{makecell}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% -------------------------------------------------------------------------

\usepackage{xassoccnt}
\newcounter{realpage}
\DeclareAssociatedCounters{page}{realpage}
\AtBeginDocument{%
  \stepcounter{realpage}
}

%%% Insert a blank page after current page
\def\blankpage{%
      \clearpage%
      \thispagestyle{empty}%
      % \addtocounter{page}{-1}%
      \null%
      \clearpage}

% ---------------------------------------字体定义---------------------------
\defaultfontfeatures{Mapping=tex-text}
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}

% ------------------ TTF --------------------------------------------------
\newcommand\installTTF{%
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \setmonofont{Courier New}
  \ifisvista
  \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
  \setCJKmonofont{KaiTi} % Pluto use LiSu Thu use Kaiti, orig is SimSun
  \setCJKfamilyfont{fs}{FangSong}
  \setCJKfamilyfont{kai}{KaiTi}
  \else
  \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi_GB2312}]{SimSun}
  \setCJKmonofont{KaiTi_GB2312} % Pluto use LiSu Thu use Kaiti, orig is SimSun
  \setCJKfamilyfont{fs}{FangSong_GB2312}
  \setCJKfamilyfont{kai}{KaiTi_GB2312}
  \fi
  \setCJKsansfont{SimHei}
  \setCJKfamilyfont{song}{SimSun}
  \setCJKfamilyfont{hei}{SimHei}
  \setCJKfamilyfont{li}{LiSu}
  \setCJKfamilyfont{you}{YouYuan}
}

% ----------------- OTF --------------------------------------------------
\newcommand\installOTF{%
  % \setmainfont{Times New Roman} % could be changed to "Times New Roman PS Std"
  \setsansfont{Arial}
  \setmonofont{Courier New}
  % \setCJKmainfont[BoldFont={Adobe Heiti Std},ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
  % \setCJKsansfont{AdobeHeitiStd-Regular}
  % \setCJKmonofont{AdobeKaitiStd-Regular}

\IfFileExists{C:/Windows/Fonts/AdobeSongStd-Light.otf}{
 \setCJKmainfont[BoldFont={AdobeHeitiStd-Regular},ItalicFont={AdobeKaitiStd-Regular}]{AdobeSongStd-Light}}
{\setCJKmainfont[BoldFont=SimHei]{SimSun}}

\IfFileExists{C:/Windows/Fonts/AdobeSongStd-Light.otf}{
  \setCJKfamilyfont{song}{AdobeSongStd-Light}}{
  \setCJKfamilyfont{song}{SimSun}}

\IfFileExists{C:/Windows/Fonts/AdobeHeitiStd-Regular.otf}{
  \setCJKfamilyfont{hei}[BoldFont={AdobeHeitiStd-Regular},ItalicFont={AdobeKaitiStd-Regular}]{AdobeHeitiStd-Regular}}{
  \setCJKfamilyfont{hei}{SimHei}}

\IfFileExists{C:/Windows/Fonts/AdobeKaitiStd-Regular.otf}{
  \setCJKfamilyfont{kai}{AdobeKaitiStd-Regular}
  \setCJKfamilyfont{li}{AdobeKaitiStd-Regular}
  \setCJKfamilyfont{you}{AdobeKaitiStd-Regular}
  }{
  \setCJKfamilyfont{kai}{SimKai}}

\IfFileExists{C:/Windows/Fonts/AdobeFangsongStd-Regular.otf}{
  \setCJKfamilyfont{fs}{AdobeFangsongStd-Regular}}{
  \setCJKfamilyfont{fs}{SimFang}}

% \setCJKfamilyfont{fs}{Sun Yat-sen Hsingshu}

}

\ifisttf
\installTTF
\else
\installOTF
\fi

\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\newcommand{\you}{\CJKfamily{you}}      % 幼圆
\def\songti{\song}
\def\fangsong{\fs}
\def\kaishu{\kai}
\def\heiti{\hei}
\def\lishu{\li}
\def\youyuan{\you}
% -------------------------------------------------------------------------


% -------------------------------------字号定义-----------------------------
\newlength\thu@linespace
\newcommand{\thu@choosefont}[2]{%
  \setlength{\thu@linespace}{#2*\real{#1}}%
  \fontsize{#2}{\thu@linespace}\selectfont}
\def\thu@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \thu@choosefont{##1}{#2}}}
\thu@define@fontsize{chuhao}{42bp}
\thu@define@fontsize{xiaochu}{36bp}
\thu@define@fontsize{yihao}{26bp}
\thu@define@fontsize{xiaoyi}{24bp}
\thu@define@fontsize{erhao}{22bp}
\thu@define@fontsize{xiaoer}{18bp}
\thu@define@fontsize{sanhao}{16bp}
\thu@define@fontsize{xiaosan}{15bp}
\thu@define@fontsize{sihao}{14bp}
\thu@define@fontsize{banxiaosi}{13bp}
\thu@define@fontsize{xiaosi}{12bp}
\thu@define@fontsize{dawu}{11bp}
\thu@define@fontsize{wuhao}{10.5bp}
\thu@define@fontsize{xiaowu}{9bp}
\thu@define@fontsize{liuhao}{7.5bp}
\thu@define@fontsize{xiaoliu}{6.5bp}
\thu@define@fontsize{qihao}{5.5bp}
\thu@define@fontsize{bahao}{5bp}
% -------------------------------------------------------------------------------


% ------------------------------------中文元素-----------------------------------
\newcommand{\china}{中华人民共和国}
\def\thuthesis{\textsc{Thu}-\textsc{Thesis}}
\def\nudtpaper{\textsc{Nudt}\textsc{Paper}}
\def\znufethesis{\textsc{SCNU}\textsc{Thesis}}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\newcommand{\chapterlabel}{}
\renewcommand\contentsname{目\hspace{1em}录}
\renewcommand\listfigurename{图\hspace{1em}目\hspace{1em}录}
\renewcommand\listtablename{表\hspace{1em}目\hspace{1em}录}
\newcommand\denotationname{缩写列表}
\newcommand\ackname{致\hspace{1em}谢}
\newcommand\resumename{攻读博士学位期间科研成果}
\newcommand\listequationname{公式索引}
\newcommand\equationname{公式}
\renewcommand\bibname{参考文献}
\renewcommand\indexname{索引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\appendixname{附录}

\def\CJK@today{\the\year 年 \the\month 月}
\newcommand\zhtoday{\CJK@today}
\newcommand\entoday{\today{}}
% -------------------------------------------------------------------------------



% ------------------------------------版面大小-----------------------------------
\geometry{top=20mm,bottom=20mm,left=30mm,right=25mm}
\geometry{headheight=9mm,headsep=6mm,footskip=10mm}

%% 学校要求 太挤
% \geometry{top=15mm,bottom=15mm,left=30mm,right=25mm}
% \geometry{headheight=9mm,headsep=6mm,footskip=10mm}
% -------------------------------------------------------------------------------



% ------------------------------------页脚页眉-----------------------------------
% ---------------定义 setheadrule 命令 --------------
\renewcommand\setheadrule[1]{%
  \ifdim#1=\z@
  \let\makeheadrule\@empty
  \else
  \def\makeheadrule{%
    \makebox[0pt][l]{\rule[.2\baselineskip]{\linewidth}{0.5pt}}%
  }%
  \fi
}
\renewcommand{\chaptermark}[1]{\markboth{\chaptertitlename~\ #1}{}}


% ---------------设置前置部分页眉、页脚--------------
\renewpagestyle{plain}{
  \sethead{}{\raisebox{.65\baselineskip}
    {
      \songti \wuhao
      \ifisanon{~}
      \else
      {\ifischapter % 标题作为页眉
        \ifistwoside
        {
          \ifodd \value{page} % 奇数页
          {\@title}
          \else % 偶数页
          \chaptertitle \fi
        }
        \else
        {\@title}\fi
        \else %标题不作为页眉
        \chaptertitle\fi}
      \fi
    }
  }{}
  \headrule%
  \setfoot{}{{\wuhao \thepage}}{}%
  % \footrule%
  % \setfootrule{1bp}
}


% ---------------设置正文部分页眉、页脚--------------
\newpagestyle{mpage}{
  \sethead{}{\raisebox{.65\baselineskip}
    {
      \songti \wuhao
      \ifisanon{~}
      \else
      {\ifischapter % 标题作为页眉
        \ifistwoside
        {
          \ifodd \value{page} % 奇数页
         \@title 
          \else % 偶数页
          %{第\thechapter 章\hspace{1em}\chaptertitle} \fi
	   {第\CJKnumber{\thechapter}章\hspace{1em}\chaptertitle} \fi        % 学校格式要求
        }
        \else
        {第\thechapter 章\hspace{1em}\chaptertitle}\fi
        \else %标题不作为页眉
	\@title
	\fi}
      \fi
    }
  }{}
  \headrule%
  \setfoot{}{{\wuhao \thepage}}{}%
  % \footrule%
  % \setfootrule{1bp}
}


% ---------------设置附录部分页眉、页脚--------------
\newpagestyle{appendixpage}{
  \sethead{}{\raisebox{.65\baselineskip}
    {
      \songti \wuhao
      \ifisanon{~}
      \else
      {\ifischapter % 标题作为页眉
        \ifistwoside
        {
          \ifodd \value{page} % 奇数页
          \@title
          \else % 偶数页
          {附录\thechapter\hspace{1em}\chaptertitle}\fi
        }
        \else
        {附录\thechapter\hspace{1em}\chaptertitle}\fi
        \else %标题不作为页眉
        \@title\fi}
      \fi
    }
  }{}
  \headrule%
  \setfoot{}{{\wuhao \thepage}}{}%
  % \footrule%
  % \setfootrule{1bp}
}


% ---------------其他页眉--------------
\newpagestyle{emptypage}{
  \sethead{}{\raisebox{.65\baselineskip}
    {
      \songti \wuhao
      \ifisanon{~}
      \else
      {\ifischapter % 标题作为页眉
        \ifistwoside
        {
          \ifodd \value{page} % 奇数页
          \@title
          \else % 偶数页
          {\chapterlabel}\fi
        }
        \else
        {\chapterlabel}\fi
        \else %标题不作为页眉
        \@title\fi}
      \fi
    }
  }{}
  \headrule%
  \setfoot{}{{\songti \wuhao \thepage}}{}%
  % \footrule%
  % \setfootrule{1bp}
}
% -------------------------------------------------------------------------------


% -------------------------------------前置、正文和附录--------------------------
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagestyle{plain}
}

\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue

  \pagenumbering{arabic}
  \normalsize % normal, 正文开始
  % \def\@tabular{\wuhao[1.25]\old@tabular} % 之后表格字体使用5号

}

\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \titleformat{\chapter}{\filcenter \heiti \sanhao}{附录\,\thechapter\,}{1em}{}
  \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
  {附录\,\thecontentslabel\quad}{}
  {\hspace{.5em}\titlerule*{.}\contentspage}
  \@mainmattertrue
  \thispagestyle{appendixpage}
}



\renewcommand\cleardoublepage{\clearpage\if@openright \ifodd\c@page
  \else
  \newpage{}
  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{center}
  \end{center}
  \vspace*{\fill}
  \clearpage\fi\fi%
}
% -------------------------------------------------------------------------------

% ---------------------------------- 英文封面 ------------------------------------
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{-18pt}
    \rmfamily \sanhao Zhongnan University of Economics and Law\\[-1ex]
    Dissertation for the Degree of Doctor of Philosophy

    \vskip 30pt
    \kaishu \bfseries \yihao \@title\\
    \rmfamily\bf \xiaoer Semiparametric Regression Model and \\[-1ex]
    Its Application
    \vskip 30pt
    \normalfont\slshape\sanhao by \\
    \bf\xiaosan  Jin Lin \\
    \normalfont\slshape\sanhao Major in \bf\xiaosan Statistics
    \vskip 30pt
    \normalfont\slshape\sanhao Supervised by  \bf\xiaosan Prof. Liu Hong
    \vskip \stretch{2}
    \normalfont\sanhao Zhongnan University of Economics and Law
    \\[-1ex]
    \normalfont\sanhao 2013.03.01
  \end{center}
  \clearpage
  \if@twoside
  \thispagestyle{empty}
  \cleardoublepage
  \fi
}
% ------------------------------ END ------------------------------------------

% ------------------------------------独创性声明---------------------------------
\newenvironment{creative}{%
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \xiaosi
  \@afterheading}
{\par\vspace{2em}\par}

% -------------------------------------------------------------------------------

% ------------------------------------中英文摘要---------------------------------
\newcommand\cabstractname{摘\hspace{1em}要}
\newcommand\ckeywordsname{{\bfseries\xiaosi 关键词}}
\newcommand\ckeywords[1]{\xiaosi \setstretch{1.4} \songti \ckeywordsname: #1}

\newcommand\eabstractname{Abstract}
\newcommand\ekeywordsname{\xiaosi \textbf{Key Words}}
\newcommand\ekeywords[1]{{\xiaosi \setstretch{1.3} \ekeywordsname: #1}}

\newenvironment{cabstract}{%
  \pagestyle{emptypage}%在不进目录情况下设置页眉
  \titleformat*{\chapter}{\xiaosan \heiti \filcenter \bfseries}
  \cleardoublepage
  \phantomsection %
  \pdfbookmark{摘要}{abstract}
  \chapter*{\cabstractname}
  \renewcommand{\chapterlabel}{摘\hspace{1em}要} %在不进目录情况下设置页眉
  \xiaosi
  \setstretch{1.4}
  \pagenumbering{arabic}
  \@afterheading}
{\par\vspace{2em}\par

}

\newenvironment{eabstract}{%
  \pagestyle{emptypage} %在不进目录情况下设置页眉
  \titleformat*{\chapter}{\xiaosan  \filcenter \bfseries \heiti}
  \cleardoublepage
  \phantomsection %
  \pdfbookmark{Abstract}{eabstract}
  \chapter*{\eabstractname}
  \renewcommand{\chapterlabel}{Abstract} %在不进目录情况下设置页眉
  \pagenumbering{Roman}
  \xiaosi
  \setstretch{1.3}
  \@afterheading}

{\par\vspace{2em}\par}
% -------------------------------------------------------------------------------


% ---------------------------------- 目录 ---------------------------------------
% ------------主目录------------
%\titlecontents{chapter}[0pt]{\vspace{0.5\baselineskip} \heiti \sihao[1.25]}
%{第{\bfseries\thecontentslabel 章}\quad}{}
%{\hspace{0.5em}\titlerule*{.}\contentspage}
%\titlecontents{section}[2em]{\vspace{0\baselineskip}\songti \xiaosi[1.25]}
%{\thecontentslabel\quad}{}
%{\hspace{.5em}\titlerule*{.}\contentspage}
%\titlecontents{subsection}[4em]{\vspace{0\baselineskip}\songti \xiaosi[1.25]}
%{\thecontentslabel\quad}{}
%{\hspace{.5em}\titlerule*{.}\contentspage}

%% ------------学校论文要求格式---------------
 \renewcommand{\thesection}{\arabic{section}}
 \renewcommand{\thesubsection}{\arabic{subsection}}
 \titlecontents{chapter}[0pt]{\vspace{0.5\baselineskip} \heiti \sihao[1.25]}
 {第{\CJKnumber{\thecontentslabel}章}\quad}{}
 {\hspace{0.5em}\titlerule*{.}\contentspage}
 \titlecontents{section}[2em]{\vspace{0\baselineskip}\songti \xiaosi[1.25]}
 {第{\CJKnumber{\thecontentslabel}节}\quad}{}
 {\hspace{.5em}\titlerule*{.}\contentspage}
 \titlecontents{subsection}[4em]{\vspace{0\baselineskip}\songti \xiaosi[1.25]}
 {\CJKnumber{\thecontentslabel}、\,}{}
 {\hspace{.5em}\titlerule*{.}\contentspage}

% ------------图表目录-----------
\titlecontents{figure}[0pt]{\songti \xiaosi[1.25]}
{\makebox[3.5em][l]{图~\thecontentslabel\quad}}{}
{\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{table}[0pt]{\songti \xiaosi[1.25]}
{\makebox[3.5em][l]{表~\thecontentslabel\quad}}{}
{\hspace{.5em}\titlerule*{.}\contentspage}


% ----------移除额外距离---------
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\znufe@chapter\@schapter}
\def\znufe@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
  \if@openright\cleardoublepage\else\clearpage\fi
  \phantomsection
  \if@mainmatter
  \refstepcounter{chapter}%
  \addcontentsline{toc}{chapter}%
  {\protect\numberline{\thechapter}#1}%
  \else
  \addcontentsline{toc}{chapter}{#1}%
  \fi
  \else
  \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \if@twocolumn
  \@topnewpage[\@makechapterhead{#2}]%
  \else
  \@makechapterhead{#2}%
  \@afterheading
  \fi
}
% -------------------------------------------------------------------------------



% ----------------------------------- 正文标题 ----------------------------------
\newcommand{\sectionbreak}{%
  \addpenalty{-300}%
  \vspace*{0pt}%
}
\setlength{\topskip}{0pt}
\setcounter{secnumdepth}{3}

%\titleformat{\chapter}{\filcenter \bfseries\heiti \sanhao[1.25]}{第 \thechapter 章\,}{1em}{\heiti}{}
%\titleformat{\section}{\bfseries\xiaosan[1.25]}{\thesection}{1em}{\heiti}{}
%\titleformat{\subsection}{\bfseries \sihao[1.25]}{\thesubsection}{1em}{\heiti}{}
%\titleformat{\subsubsection}{\bfseries \xiaosi[1.25]}{\thesubsubsection}{1em}{\heiti}{}

%\titlespacing{\chapter}{0pt}{24bp}{18bp}
%\titlespacing{\section}{0pt}{24bp}{6bp}
%\titlespacing{\subsection}{0em}{0.5\baselineskip}{0ex}
%\titlespacing{\subsubsection}{0em}{1ex}{0ex}

%% ------------学校论文要求格式---------------
 \titleformat{\chapter}{\filcenter \heiti \sanhao[1.25]}{第\CJKnumber{\thechapter}章\,}{1em}{\heiti}{}
 \titleformat{\section}{\filcenter \heiti \xiaosan[1.25]}{第\CJKnumber{\arabic{section}}节\,}{1em}{\heiti}{}
 \titleformat{\subsection}{\bfseries \songti \sihao[1.25]}{\CJKnumber{\arabic{subsection}}、\,}{0em}{}
 \titleformat{\subsubsection}{\heiti\xiaosi[1.25]}{(\CJKnumber{\arabic{subsubsection}})\,}{0em}{\heiti}{}

 \titlespacing{\chapter}{0pt}{24bp}{18bp}
 \titlespacing{\section}{0pt}{24bp}{6bp}
 \titlespacing{\subsection}{2em}{0.5\baselineskip}{0ex}
 \titlespacing{\subsubsection}{2em}{1ex}{0ex}


% -------------------------------------------------------------------------------




% ------------------------------------正文字号-----------------------------------
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{12.87bp}%
  % \renewcommand{\baselinestretch}{1.0}%  行距
  \setlength\abovedisplayskip{10bp \@plus 2bp \@minus 2bp}%
  \setlength\abovedisplayshortskip{10bp \@plus 2bp \@minus 2bp}%
  \setlength\belowdisplayskip{\abovedisplayskip}%
  \setlength\belowdisplayshortskip{\abovedisplayshortskip}%
}
% -------------------------------------------------------------------------------


% -----------------------------------段落----------------------------------------
\setlength{\parindent}{2.0em}       % 段落缩进
\setlength{\parskip}{0bp \@plus 0bp \@minus 0bp}
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}


% -------------------------------------------------------------------------------


% -----------------------------------参考文献间距--------------------------------
\renewenvironment{thebibliography}[1]{%

  \thispagestyle{emptypage}
  \bibliographystyle{gbt7714-plain}              % 参考文献style

  \chapter*{\bibname}%
  \addcontentsline{toc}{chapter}{\bibname}

  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth\labelwidth{1.1cm}
    \setlength{\labelsep}{0.4em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelwidth+\labelsep}
    \addtolength{\itemsep}{-0.7em}
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy\frenchspacing
  \clubpenalty4000%
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \sfcode`\.\@m
}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist\frenchspacing}
% -------------------------------------------------------------------------------


% ----------------------------------浮动对象-------------------------------------
\setlength{\floatsep}{10bp \@plus 5bp \@minus 5bp}
\setlength{\intextsep}{10bp \@plus 5bp \@minus 5bp}
\setlength{\textfloatsep}{10bp \@plus 5bp \@minus 5bp}

\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}

\renewcommand{\textfraction}{0.10}
\renewcommand{\topfraction}{0.90}
\renewcommand{\bottomfraction}{0.90}
\renewcommand{\floatpagefraction}{0.80}

\let\old@tabular\@tabular
\def\thu@tabular{\small\old@tabular}
\DeclareCaptionLabelFormat{thu}{{\small\bfseries #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{thu}{\hspace{1em}}
\DeclareCaptionFont{thu}{\small\heiti}

\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}

% \RequirePackage{remreset}
% \@removefromreset{equation}{section}
% \numberwithin{equation}{section}
% \numberwithin{equation}{chapter}
\renewcommand*{\theequation}{\thechapter-\arabic{equation}} % 连接符号从点 '.' 修改为 '-'
% \counterwithin{equation}{chapter}

\captionsetup{labelformat=thu,labelsep=thu,font=thu}
\captionsetup[table]{position=top,belowskip={5bp},aboveskip=2bp}
\captionsetup[figure]{position=bottom,belowskip={0bp},aboveskip=10bp}
\captionsetup[subfloat]{labelformat=simple,font=thu,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}

\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}


% -------------------------------------自定义环境---------------------------------
% ---------------符号列表---------------
\newenvironment{denotation}[1][3cm]{
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{emptypage}
  \chapter*{\denotationname} % no tocline
  \renewcommand{\chapterlabel}{\denotationname} %设置页眉
  % \addcontentsline{toc}{chapter}{\denotationname}%
  \noindent\begin{list}{}%
    {\vskip-30bp\xiaosi[1.6]
      \renewcommand\makelabel[1]{##1\hfil}
      \setlength{\labelwidth}{#1} % 标签盒子宽度
      \setlength{\labelsep}{5mm} % 标签与列表文本距离
      \setlength{\itemindent}{0cm} % 标签缩进量
      \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
      \setlength{\rightmargin}{0cm}
      \setlength{\parsep}{-1.5mm} % 段落间距
      \setlength{\itemsep}{-5mm} % 标签间距
      \setlength{\listparindent}{0cm} % 段落缩进量
      \setlength{\topsep}{0pt} % 标签与上文的间距
    }
  }{\end{list}}

% ---------------致谢----------------
\newenvironment{ack}{%
  \thispagestyle{emptypage}
  \chapter*{\ackname}%
  \addcontentsline{toc}{chapter}{\ackname}%
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi%
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}


% --------------个人科研--------------
\newenvironment{resume}{%
  \thispagestyle{emptypage}
  \chapter*{\resumename}
  \addcontentsline{toc}{chapter}{\resumename}
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}
% -------------------------------------------------------------------------------

% -----------------------------------数学定理环境-----------------------------------
\renewtheoremstyle{nonumberplain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ \theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ (##3)\theorem@separator]}
\theoremstyle{nonumberplain}
\theorembodyfont{\rmfamily}
\theoremheaderfont{\sffamily}
\theoremsymbol{\ensuremath{\blacksquare}}
\theoremseparator{:\,}
\newtheorem{proof}{证明}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]

\renewtheoremstyle{plain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\ (##3)\theorem@separator]}
\theoremstyle{plain}
\theorembodyfont{\kai}
\theoremheaderfont{\hei}
\theoremsymbol{}
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{conjecture}{猜想}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{exercise}{练习}[section]
\newtheorem{example}{例}[section]
\newtheorem{problem}{问题}[section]
\newtheorem{remark}{注释}[section]


\renewenvironment{split}{%
  \if@display%
  \ifinner%
  \@xp\@xp\@xp\split@aligned%
  \else%
  \ifst@rred \else \global\@eqnswtrue \fi%
  \fi%
  \fi%
  \collect@body\gather@split%
}{%
  \crcr%
  \egroup%
  \egroup%
  \iftagsleft@ \@xp\lendsplit@ \else \@xp\rendsplit@ \fi%
}
% -------------------------------------------------------------------------------



% ------------------------------------论文属性-----------------------------------
\def\classification#1{\def\@classification{#1}} % 中图分类号
\def\serialno#1{\def\@serialno{#1}} % 学号
\def\university#1{\def\@university{#1}} % university号
\def\confidentiality#1{\def\@confidentiality{#1}} % 密级
\def\title#1{\def\@title{#1}} % 中文题目
\newtoks\displaytitle
\def\author#1{\def\@author{#1}}
\def\zhdate#1{\def\@zhdate{#1}} % 中文日期
\def\subject#1{\def\@subject{#1}} % 中文学科
\def\researchfield#1{\def\@researchfield{#1}} % 中文研究方向
\def\supervisor#1{\def\@supervisor{#1}} % 导师
\def\school#1{\def\@school{#1}} % 工学，理学，以同等学历申请工(理)学
\def\entitle#1{\def\@entitle{#1}}

\def\optionpaperclass#1{\def\@optionpaperclass{#1}} % paperclass
\def\optionpaperclassen#1{\def\@optionpaperclassen{#1}} % paperclass english
\def\optionas#1{\def\@optionas{#1}} % Advisor OR Supervisor

\ifismaster
\optionpaperclass{硕士}
\optionpaperclassen{Master}
\optionas{Advisor}
\else
\optionpaperclass{博士}
\optionpaperclassen{Doctor}
\optionas{Supervisor}
\fi
% -------------------------------------------------------------------------------



% -------------------------------------制作封面----------------------------------
\def\maketitle{%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\underline{\hbox to ##2{\hfil##3\hfil}}}
  }
  \null

  \ifisanon%
  \author{}%
  \enauthor{}%
  \supervisor{}%
  \cosupervisor{}%
  \ensupervisor{}%
  \encosupervisor{}%
  \else\relax\fi%

  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \begin{center}\leavevmode % 表格环境
    \vspace{-1.5cm}
    {\songti \sihao[1.25]%
      \begin{tabular}{llcll}
        \bfseries 分类号 & \entry{1}{3.2cm}{\@classification}     & \hspace*{4.8cm}
                                                                    \bfseries 密\quad 级   & \entry{1}{3.2cm}{\@confidentiality}     \\[5mm]
        \bfseries U\,D\,C  & \entry{1}{3.2cm}{\@serialno} &            \hspace*{4.8cm}
                                                            \bfseries 编\quad 号  & \entry{1}{3.2cm}{\@university}
      \end{tabular}
    }
    \par
    \vspace*{1.5cm} %插入空白
    \includegraphics[width=14cm]{title.jpg}\\
    % \vspace{-1.5cm} %文字上移
    \vspace{0.5cm} %插入空白
    {\songti \bfseries \erhao \ziju{12pt} \@optionpaperclass{}学位论文\\}
    \vspace{1cm} %插入空白
    {\kaishu \bfseries \yihao \@title{} \\ }

    \vspace{60bp}
    {\bfseries \songti \sihao
      \begin{tabular}{p{5cm}p{4cm}}
        {研\hfill 究\hfill 生\hfill 姓\hfill 名：} &
                                                     {{\@author}\hfil{}}  \\[1ex]
        {指\hfill 导\hfill 教\hfill 师\hfill 姓\hfill 名\hfill 、\hfill 职\hfill 称：} &
                                                                                         {{\@supervisor}\hfil{}}  \\[0.5ex]
        {学\hfill 科\hfill 门\hfill 类：} &
                                            {{\@school}\hfil{}}  \\[0.5ex]
        {专\hfill 业\hfill 名\hfill 称：} &
                                            {{\@subject}\hfil{}}  \\[0.5ex]
        {研\hfill 究\hfill 方\hfill 向：} &
                                            {{\@researchfield}\hfil{}}  \\[0.5ex]
        {入\hfill 学\hfill 年\hfill 月：} &
                                            {{2010\hfill 年\hfill 9\hfill 月}\hfil{}} \\[-1ex]
      \end{tabular}
    }\\[3cm]

    \sanhao \heiti 二〇一三年三月一号
  \end{center}%
  \vspace{1mm}
  \cleardoublepage%
}
% -------------------------------------------------------------------------------

% --------------------------------------myscnu-----------------------------------
\RequirePackage{cases,listings}
\RequirePackage{fancyvrb}
\RequirePackage[chapter]{algorithm}
\RequirePackage{algorithmic}
\renewcommand\lstlistlistingname{程序目录}
\renewcommand\lstlistingname{程序}

% 配置Lstlisting
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
  language=R,
  basicstyle=\footnotesize\ttfamily,
  commentstyle=\ttfamily\color{dkgreen}, % 评论颜色,打印时使用black
  numbers=left,
  numberstyle=\ttfamily\color{gray},  % the style that is used for the line-numbers,
  stepnumber=1,
  numbersep=5pt,
  backgroundcolor=\color{white},
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  frame=leftline,
  tabsize=2,
  captionpos=t,
  breaklines=true,
  breakatwhitespace=false,
  caption=R 程序代码,
  escapeinside={},
  keywordstyle=\color{blue}\ttfamily,
  stringstyle=\color{purple}\ttfamily,
  morekeywords={},
  xleftmargin=2em, xrightmargin=0em, aboveskip=1em, belowskip=2em,
}

% 配置算法包
\algsetup{indent=3em}
\floatname{algorithm}{算法}
\renewcommand{\algorithmicrequire}{\textbf{已知:}}
\renewcommand{\algorithmicensure}{\textbf{求:}}

\DefineVerbatimEnvironment{code}{Verbatim}%
{frame=single,framerule=0.3mm,rulecolor=\color{black},%
  fillcolor=\color{red!20!green!20!blue!20},framesep=1mm,fontsize=\small}

% 自定义其他命令
\newcommand{\myscnu}{我的导言}
\newcommand{\ve}[1]{\ensuremath{\bm #1}}

% tabularx 中的 Z 环境，居中自动调整
\newcolumntype{Z}{>{\centering\arraybackslash}X}

% % 
% -------------------------------------------------------------------------------
\endinput
%% 
%% End of file `znufethesis.cls'.
