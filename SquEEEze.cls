\NeedsTeXFormat{LaTeX2e}	% tells the compiler which version of LaTeX the package is for
\ProvidesClass{SquEEEze}[2017/07/24]

\LoadClass{exam}	% see documentation: http://www-math.mit.edu/~psh/exam/examdoc.pdf
\RequirePackage{mathtools}
\RequirePackage{xcolor}
\RequirePackage[justification=centering]{caption}
\RequirePackage[font=small]{caption}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{float}
\RequirePackage{tcolorbox}

\extrafootheight{1cm}	% move the header down
\graphicspath{{./img/}}

\newcommand{\category}[3] {	% specify the category (#1), difficulty (#2), and subject (#3)
	%\lhead{\bfseries\large #1\\#2\\#3}
}

\renewcommand{\author}[1] {	% author of the question
	%\rhead[\bfseries\large #1]{}
}

\firstpagefooter{}{Page \thepage\ of \numpages}{}	% footer of first page
\runningfooter{}{Page \thepage\ of \numpages}{}	% footer of succeeding pages

%\qformat{}		% remove question number; you may comment this out
\renewcommand{\questionshook}{%
	\setlength{\leftmargin}{0pt}%
	\setlength{\labelwidth}{-\labelsep}%
}

\newcommand{\image}[2] {	
	\begin{figure}[H]
		\centering
		\includegraphics[height = 2.5in, width = 3in, keepaspectratio]{"#1"} 
		\caption{#2}
		\label{#1}
	\end{figure}
}

\renewcommand{\solutiontitle} {\noindent\textbf{}\par\noindent}	

\newcommand{\finalAns}[1] {	% for the final answer
	\renewcommand{\solutiontitle} {\noindent\textbf{}\par\noindent}
	\begin{solution}
		\begin{center}
			\begin{tcolorbox}[colback=yellow, colframe=white]
				\begin{center}
					#1			
				\end{center}
			\end{tcolorbox}
		\end{center}
	\end{solution}
}