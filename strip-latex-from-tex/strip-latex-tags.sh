#!\bin\bash
sed '/\\begin{align/,/\\end{align/d;
 /\\begin{table/,/\\end{table/d;
 s/\\footnote{//;
 s/\\url{//;
 s/\\_/_/g;
 s/\^{\([^}]*\)}/^\1/g;
 s/\\emph{//g;
 s/\\text{\([^}]*\)}/\1/g;
 s/_{\([^}]*\)}/\1/g;
 s/\\frac{\([^}]*\)}{\([^}]*\)}/\1\/\2/g;
 s/\\label{[^}]*}//g;
 s/\\qquad//g;
 s/\\textbf{//g;
 s/\\begin{itemize}//;
 s/\\end{itemize}//;
 s/\\begin{enumerate}//;
 s/\\end{enumerate}//;
 s/\\item\[\([^]]*\)\]/\n* \1 /;
 s/\\item/\n* /;
 s/\\textbf{\([^}]*\)}/\1/;
 s/\\cite\[[^]]*]/\\cite/g;
 s/\\cite{[^}]*}//g;
 s/[ ]\\ref{[^}]*}//g;
 s/\\input{[^}]*}//;
 /\\begin{figure/d;
/\\end{figure/d;
 s/\\subfloat\[\([^]]*\)\]\[\([^]]*\)\]/ \1 \n\2 \n/;
/\\begin{circuitikz}/,/\\end{circuitikz}/d;
 /^%/d; /^\\label/d;
 s/\$//g;
 s/\\rightarrow/->/g;
 s/\\si{[^}]*}//g;
# s/\\[^{]*{\([^}]*\)}/\1/;
 s/\\times/*/;
 s/\\chapter[*]\?{//;
 s/\\section{//;
 s/\\subsection{//;
s/\\centering//;
s/\\caption{//;
s/\\resizebox{[^}]*}//;
/\\includegraphics/d;
/\\begin{equation/,/\\end{equation/d;
s/[^\]%.*$//;
#s/{.{//;
s/[{}]//g;' $1 | tr '\n' '\r' |
sed 's/\r / /g; s/\r\([^ ]\)/\n\1/g; s/\r//g'