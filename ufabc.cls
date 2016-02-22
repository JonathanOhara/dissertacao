% Latex definitions for UFABC (CCMC) style
%
% Created by Alander Pereira dos Santos, january 2012

\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{ufabc}[2012/01/01]

\LoadClass[12pt,a4paper,oneside]{book}

\RequirePackage[a4paper,top=3cm,left=3cm,right=2cm,bottom=2cm]{geometry}
%\RequirePackage{times}
\RequirePackage[latin1]{inputenc}
\RequirePackage{ae}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{makeidx}
\RequirePackage[english,portuges,brazil]{babel}
\RequirePackage[pdftitle={Universidade Federal do ABC},
a4paper,colorlinks=true,filecolor=blue,linkcolor=blue,citecolor=blue,]{hyperref}
\RequirePackage{ifthen}

%
% Data
%
\renewcommand{\date}[2]{
    \gdef\@publmonth{#1}
    \gdef\@publyear{#2}
}

%
% Instituição
%
\newcommand{\instituicao}[1] {
    \gdef\@instituicao{#1}
}

%
% Curso {Bacharelado, Pós-graduação}{Nome do Curso}{Bacharel, Mestre ou Doutor}
%
\newcommand{\curso}[3] {
    \gdef\@tipo{#1}
    \gdef\@curso{#2}
    \gdef\@grau{#3}
}

\newcommand{\documento}[1] {
    \gdef\@documento{#1}
}

%
% Autor
%
\newcommand{\autor}[2] {
    \gdef\@nome{#1}
    \gdef\@sobrenome{#2}
}

%
% Orientador
%
\newcommand{\orientador}[1]{
    \gdef\@orientador{#1}
}

%
% Coordenador
%
\newcommand{\coordenador}[1]{
    \gdef\@coordenador{#1}
}

%
% Convidadods
%
\newcommand{\convidados}[4] {
    \gdef\@convidadou{#1}
    \gdef\@convidadod{#2}
    \gdef\@convidadot{#3}
    \gdef\@convidadoq{#4}
}

%
% Título do documento
%
\newcommand{\titulo}[1] {
    \gdef\@titulo{#1}
}

%
% Definição da capa
%
\renewcommand{\maketitle}{%

   \begin{titlepage}
        \pdfbookmark[0]{Capa}{capa}
        \noindent

        \center

        \begin{spacing}{1.2}
            \@instituicao\\
            \@tipo~em~\@curso
        \end{spacing}

        \vspace*{\stretch{2}}

        \@nome~\@sobrenome

        \vspace*{\stretch{2}}

        \begin{spacing}{1.2}
            \MakeUppercase{\@titulo}
        \end{spacing}

        \vspace*{\stretch{2}}

        \normalsize

        \begin{spacing}{1.2}
            Dissertação
        \end{spacing}

        \vspace*{\stretch{2}}

        \begin{spacing}{1.5}
           Santo André - SP \\ \@publyear
        \end{spacing}

        \@makerosto
        \@makerostoverso
        \@makeaprovacao

   \end{titlepage}
}

\newcommand{\texto}[1] {
    \gdef\@texto{#1}
}

%
% Definição da folha de rosto
%
\newcommand{\@makerosto}{%
    \newpage%

    \pdfbookmark[0]{Folha de Rosto}{rosto}
    \thispagestyle{empty}
    \noindent

    \center

    \begin{spacing}{1.2}
        \@nome~\@sobrenome
    \end{spacing}

    \vspace*{\stretch{1}}

    \begin{spacing}{1.2}
        \MakeUppercase{\@titulo}
    \end{spacing}

    \vspace*{\stretch{1}}

    \normalsize

    \begin{spacing}{1.2}
        \@documento
    \end{spacing}

    \vspace*{\stretch{2}}

    \begin{spacing}{1.2}
        \@documento~apresentada ao Curso de~\@tipo~da Universidade Federal do ABC
        como requisito parcial para obtenção do grau de~\@grau~em~\@curso
    \end{spacing}

    \vspace*{\stretch{2}}

    \begin{spacing}{1.5}
        \@orientador
    \end{spacing}

    \vspace*{\stretch{2}}

    \begin{spacing}{1.5}
        Santo André - SP \\ \@publyear
    \end{spacing}
}

%
% Definição do verso da folha de rosto
%
\newcommand{\@makerostoverso}{%
    \newpage%
    \vspace*{\stretch{5}}
    \pdfbookmark[0]{Ficha Catalográfica}{cip}
    \thispagestyle{empty}

    \begin{flushleft}
    Ficha Catalográfica
    \end{flushleft}
    \begin{center}
        \framebox[110mm] {
            \begin{minipage}[b]{100mm}
                \begin{flushleft}
                    \vspace*{0.4ex}
                    \setlength{\parindent}{0.5em}%
                    \begin{footnotesize}
                        \setlength{\baselineskip}{0.7\baselineskip}
                        \noindent\@sobrenome, \@nome.\par
                        \@titulo\ / \@nome\ \@sobrenome.\\
                        \noindent Santo André, SP: UFABC, \@publyear.\par
                        \thepage p.\\
                        \vspace{\baselineskip}
                        \vspace{0.4ex}
                    \end{footnotesize}
                \end{flushleft}
            \end{minipage}
        }

    \end{center}
}

%
% Definição de aprovação
%
\newcommand{\@makeaprovacao}{%
    \newpage%

    \pdfbookmark[0]{Folha de Aprovação}{aprovacao}
    \thispagestyle{empty}
    \noindent

    \center

    \begin{spacing}{1.2}
        \@nome~\@sobrenome
    \end{spacing}

    \vspace*{\stretch{1}}

    \begin{spacing}{1.2}
        \MakeUppercase{\@titulo}
    \end{spacing}

    \vspace*{\stretch{1}}

    \normalsize

    \begin{spacing}{1.2}
        Essa~\@documento~foi julgada e aprovada para a obtenção do grau de~\@grau~em~\@curso~no curso de
        \@tipo~em~\@curso~da Universidade Federal do ABC.
    \end{spacing}

    \vspace*{\stretch{2}}

    \begin{spacing}{1.5}
        Santo André - SP - \@publyear
    \end{spacing}

    \vspace*{\stretch{2}}

    \begin{spacing}{1.5}
        \vspace{5pt}\hrule\relax\vspace{5pt}
        \@coordenador \par
        Coordenador do Curso
    \end{spacing}

    \vspace*{\stretch{2}}

    BANCA EXAMINADORA

    \vspace*{\stretch{2}}

    \begin{minipage}[c]{180mm}
        \begin{minipage}[c]{80mm}
            \begin{center}
                \vspace{5pt}\hrule\relax\vspace{5pt}
                \@convidadou
                \vspace{2cm}
                \vspace{5pt}\hrule\relax\vspace{5pt}
                \@convidadod
            \end{center}
        \end{minipage}
        \begin{minipage}[c]{80mm}
            \begin{center}
                \vspace{5pt}\hrule\relax\vspace{5pt}
                \@convidadot
                \vspace{2cm}
                \vspace{5pt}\hrule\relax\vspace{5pt}
                \@convidadoq
            \end{center}
        \end{minipage}
    \end{minipage}
}


%
% Definição do ambiente para criar o resumo do documento
%
\newenvironment{resumo}
{\chapter*{Resumo}
 \pdfbookmark[0]{Resumo}{resumo}
 \begin{spacing}{1.5}}
{\end{spacing} }

%
% Definição do ambiente para criar o abstract do documento
%
\newenvironment{resumoingles}
{\chapter*{Abstract}
 \pdfbookmark[0]{Abstract}{abstract}
 \it \begin{spacing}{1.5}} %abstract em italico ativado
{ \end{spacing} }

\setlength{\parskip}{.5em}

\onehalfspacing
