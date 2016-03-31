## tikz-examples

This repository collects some tikz examples, mostly Hasse diagrams.

To demonstrate how these can be inserted into LaTeX documents,
each directory contains a file called directoryname.tex.
For example, in the Lattices directory is a file called Lattice.tex which pulls
in a bunch of lattices from that directory and surrounds them with a tikz
environment. 

### Example
To insert the so called M<sub>3</sub> and M<sub>4</sub> lattices into your LaTeX
document, put the files M3.tex and M4.tex (from the Lattices subdirectory) in
the same directory as your main tex file, then insert the following lines in
your tex file: 

    \tikzstyle{lat} = [circle,draw,inner sep=\dotsize]
    \begin{tikzpicture}
      \input{M3.tex}
    \end{tikzpicture}

    \begin{tikzpicture}
      \input{M4.tex}
    \end{tikzpicture}

Note: you only need one `\tikzstyle{lat}` line.

You can increase the scale and add some labels. For example,

    \begin{tikzpicture}[scale=2]
      \input{M3.tex}
      \draw (0,0) node {$(0,0)$};
      \draw (0,-1) node {{\tt file: M3.tex}};
    \end{tikzpicture}

### Troubleshooting

**Questions/comments/suggestions:** please [open a new issue](https://github.com/williamdemeo/tikz-examples/issues/new).

### Terms of Use
This repository and its contents are free software that you can redistribute
and/or modify under the terms of the GNU General Public License, as published
by the Free Software Foundation (version 3 of the License).

This repository and its contents have been made freely available in the hope
that they will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should be able to find a copy of the GNU General Public License
along with this repository.  If not, see
[http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

Refer to the license file for the precise terms, but roughly speaking this
software may be used, modified, and shared, as long as and all modifications and
improvements are also publicly and freely available.


