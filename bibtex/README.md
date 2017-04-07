## BibTeXRefs

This is a repository containing BibTeX citations for (most of) the works of some
authors working in universal algebra and related fields.  
Most of these files were generated for by listing the 50 most recent BibTeX 
records appearing on MathSciNet for the given author.

To use any of these files in your LaTeX document, add some lines like the
following just before `\end{document}`:

    \bibliographystyle{plain}
    \bibliography{freese}

Then make some citations in your document, like

    \cite[Lemma 3]{MR909290}
	
Then compile your document with

    pdflatex Foo.tex
	bibtex Foo.aux
	pdflatex Foo.tex


**Questions/comments/suggestions:** please [open a new issue](https://github.com/williamdemeo/latex_wjd/issues/new).
