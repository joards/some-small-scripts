#!\bin\bash
sed '/\\begin{align/,/\\end{align/d;
 /\\begin{table/,/\\end{table/d;
 s/\\footnote{//;
 s/\\url{//;
 s/\\begin{itemize}//;
 s/\\end{itemize}//;
 s/\\item/ */;
 s/\\cite{[^}]*}//;
 s/\\ref{[^}]*}//g;
 s/\\input{[^}]*}//;
 /\\begin{figure/d;
/\\end{figure/d;
 /^%/d; /^\\label/d;
 s/\$//g;
 s/\\si{[^}]*}//g;
# s/\\[^{]*{\([^}]*\)}/\1/;
 s/\\times/*/;
 s/\\section{//;
 s/\\subsection{//;
s/\\centering//;
s/\\caption{//;
s/\\resizebox{[^}]*}//;
/\\begin{equation/,/\\end{equation/d;
s/[^\]%.*$//;
s/}//g;
s/{.{//;' $1 | tr '\n' '\r' |
sed 's/\r / /g; s/\r\([^ ]\)/\n\1/g; s/\r//g'
