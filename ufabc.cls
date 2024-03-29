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
% Institui��o
%
\newcommand{\instituicao}[1] {
    \gdef\@instituicao{#1}
}

%
% Curso {Bacharelado, P�s-gradua��o}{Nome do Curso}{Bacharel, Mestre ou Doutor}
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
% T�tulo do documento
%
\newcommand{\titulo}[1] {
    \gdef\@titulo{#1}
}

%
% Defini��o da capa
%
\renewcommand{\maketitle}{%

   \begin{titlepage}
        \pdfbookmark[0]{Capa}{capa}
        \noindent

        \begin{center}

			\begin{spacing}{1.2}
				\@instituicao\\
				\@tipo~em~\@curso
			\end{spacing}

			\vspace*{\stretch{1}}
			
			Disserta��o de Mestrado
			
			\vspace*{\stretch{1}}

			\@nome~\@sobrenome

			\vspace*{\stretch{1}}
			
			\normalsize

			\begin{spacing}{1.2}
				\MakeUppercase{\@titulo}
			\end{spacing}

			\vspace*{\stretch{4}}

			\begin{spacing}{1.5}
			   Santo Andr� - SP \\ \@publyear
			\end{spacing}
		\end{center}
		
        \@makebranco
        \@makerosto
        \@makerostoverso
        \@makededicatoria
        \@makeagradecimentos

   \end{titlepage}
}

\newcommand{\@makebranco}{
		\newpage
		\thispagestyle{empty}
		\noindent
		\begin{center}
		\end{center}
}

\newcommand{\@makeagradecimentos}{
		\newpage
		\thispagestyle{empty}
		\noindent
		
		\begin{spacing}{1.5}
		
		\begin{center}\begin{large}\textbf{Agradecimentos}\end{large}\end{center}
		
		\vspace{1cm}

		Ao meu orientador, Prof. Dr. Fabr�cio Olivetti de Fran�a, por sua aten��o e apoio em todos os momentos do curso e por sua solicitude em todo o tempo em que trabalhamos juntos.
		
		Aos professores Ciro Cirne Trindade e Andr� Luiz Vizine Pereira pelos incentivos e incont�veis ajudas em rela��o aos estudos.	
		
		Aos novos professores da UFABC que conheci pelos ensinamentos t�cnicos e de pesquisa.
		
		Aos meus familiares e esposa por me incentivar e acreditar que eu poderia chegar l�.

		� minha esposa, �rica, por sua paci�ncia e compreens�o durante aos dias, noites e madrugadas que tive que ficar estudando.
		
		� UFABC pela qualidade do curso e pela estrutura oferecida.
		\end{spacing}		
}

\newcommand{\@makededicatoria}{
		\newpage
		\thispagestyle{empty}
		\vspace*{\stretch{5}}
		\begin{flushright}
				\begin{minipage}[b]{100mm}
						\begin{flushright}
						\textit{Aos meus professores, familia e esposa.}
						\end{flushright}
				\end{minipage}
		\end{flushright}
}

\newcommand{\texto}[1] {
    \gdef\@texto{#1}
}

%
% Defini��o da folha de rosto
%
\newcommand{\@makerosto}{%
    \newpage%
    \pdfbookmark[0]{Folha de Rosto}{rosto}
    \thispagestyle{empty}
    \noindent

	\begin{center}

		\begin{spacing}{1.2}
			\@tipo~em~\@curso
		\end{spacing}
		
		\vspace*{\stretch{1}}
		
		\begin{spacing}{1.2}
			%\@documento
			Disserta��o de Mestrado
		\end{spacing}

		\vspace*{\stretch{1}}

		\begin{spacing}{1.2}
			\@nome~\@sobrenome
		\end{spacing}

		\vspace*{\stretch{1}}
		
		\begin{spacing}{1.2}
			\MakeUppercase{\@titulo}
		\end{spacing}

		\normalsize

		\vspace*{\stretch{0.25}}

		\begin{flushright}
			\begin{minipage}[c]{80mm}
				\begin{spacing}{1.2}
					Trabalho apresentado como requisito parcial para obten��o do t�tulo de~\@grau~em~\@curso, sob orienta��o do Prof. Dr. Fabr�cio Olivetti de Fran�a.
				\end{spacing}
			\end{minipage}
		\end{flushright}
				
		\vspace*{\stretch{5}}

		\begin{spacing}{1.5}
			Santo Andr� - SP \\ \@publyear
		\end{spacing}
		
	\end{center}
}

%
% Defini��o do verso da folha de rosto
%
\newcommand{\@makerostoverso}{%
    \newpage
    \thispagestyle{empty}
    
    \begin{center}
        \framebox[155mm] {
            \begin{minipage}[b]{145mm}
                    		\vspace*{0.5cm}
                        \setlength{\baselineskip}{0.7\baselineskip}
                        \begin{center}
                        \textbf{Este exemplar foi revisado e alterado em rela��o � vers�o original, de acordo com as observa��es levantadas pela banca no dia da defesa, sob responsabilidade �nica do autor e com a anu�ncia de seu orientador.}
                        \end{center}
                        
                        \vspace*{0.5cm}
                        
                        \textbf{Santo Andr�,} \underline{\hspace{2cm}} \textbf{de} \underline{\hspace{7cm}} \textbf{de 2017}
                        
                        \vspace*{0.5cm}
                        
                        \textbf{Assinatura do autor:} \underline{\hspace{10cm}}
                        
                        \vspace*{0.5cm}
                        
                        \textbf{Assinatura do orientador:} \underline{\hspace{9cm}}
                        
                        \vspace{\baselineskip}
                        \vspace{0.4ex}
            \end{minipage}
        }

    \end{center}
}

%
% Defini��o de aprova��o
%
\newcommand{\@makeaprovacao}{%
    \newpage%

    \pdfbookmark[0]{Folha de Aprova��o}{aprovacao}
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
        Essa~\@documento~foi julgada e aprovada para a obten��o do grau de~\@grau~em~\@curso~no curso de
        \@tipo~em~\@curso~da Universidade Federal do ABC.
    \end{spacing}

    \vspace*{\stretch{2}}

    \begin{spacing}{1.5}
        Santo Andr� - SP - \@publyear
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
% Defini��o do ambiente para criar o resumo do documento
%
\newenvironment{resumo}
{\chapter*{Resumo}
 \pdfbookmark[0]{Resumo}{resumo}
 \begin{spacing}{1.5}}
{\end{spacing} }

%
% Defini��o do ambiente para criar o abstract do documento
%
\newenvironment{resumoingles}
{\chapter*{Abstract}
 \pdfbookmark[0]{Abstract}{abstract}
 \it \begin{spacing}{1.5}} %abstract em italico ativado
{ \end{spacing} }

\setlength{\parskip}{.5em}

\onehalfspacing
