# LaTeX Template

A simple LaTeX Template, with nice structure, and commands for ease of use

## compiling and watching using `latexmk` :

➤ efficient way to compile and watch for changes in your LaTeX files

If you use zsh (which I do) : [or just copy paste what's inside into your terminal]

```zsh
zsh compile.zsh
```

```zsh
zsh watch.zsh
```

## render options :

### set the render option

open `include/settings/render.tex` :

```
📦 LaTeX-Template
 ┣ 📂Images
 ┣ 📂bibliography
 ┣ 📂content
 ┣ 📂include
 ┃ ┣ 📂commands
 ┃ ┣ 📂definition
 ┃ ┣ 📂packages
 ┃ ┣ 📂settings
 ┃ ┃ ┣ 📜render.tex   <<<<<< [ that one ]
 ┃ ┃ ┗ 📜settings.tex
```

and then turn on or off with either `1` or `0` :

```latex
% ...
% & value
\setcounter{code}{1}  % render code blocks
\setcounter{proof}{0} % do not render proofs
% ...
```

### use in document :

```latex
\ifnum\value{proof}=1
    \preuve{
        ...
    }
\fi

```

```latex
\ifnum\value{code}=1
    \begin{minted}
        ...
    \end{minted}
\fi
```

## Custom commands :

### Math Sets

-   `\R` : ℝ
-   `\N` : ℕ
-   `\Z` : ℤ
-   `\Q` : ℚ
-   `\C` : ℂ
-   `\K` : 𝕂
-   `\F` : 𝔽
-   `\E` : 𝔼
-   `\P` : ℙ
    ...

### definition

-   `\famfinie[var] {from} {to}`
    -   exemple : `\famfinie[k] x 1 M` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/famfinie.png"/>`
-   `<span>\statrang X N i` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/statrang.png"/>`
-   `\suitestatrang X 1 M` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/suitestatrang.png"/>`

### convergence :

usage : `\cmd [var] [where it tends to]`

-   `\cvl` : convergence en loi
-   `\cvp` : convergence en probabilité
-   `\cvps` : convergence presque sûre
-   `\cvL [nb]` : convergence dans 𝕃ᴾ
-   `\cvetr` : convergence étroite de mesure
-   `\cvnorme [norm sub symbol]` : convergence pour la norme spécifiée

    -   `<span>`exemple : `\cvnorme \infty x 0` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/cvnorme.png"/>`

-   `\cvpp [μ]` : convergence μ-presque partout
-   `\tendset`

    -   `<span>`exemple : `\tendset x \infty A` `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/tendset.png"/>`

### operators / functions / ... :

-   `\indicatrice [ensemble]`
    -   `<span>` exemple : `\indicatrice {|f| < \alpha}` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/indicatrice.png"/>`
-   `\norme [norm sub symbol] [vector]`
-   `\distnorme [norm sub symbol] [vector 1] [vector 2]`
-   `\prodscal [vector 1] [vector 2]` : ⟨ x | y ⟩
-   `\prodscalselon [sub symbol] [vector 1] [vector 2]` :
    -   `<span>`exemple : `\prodscalselon G x y` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/prodscalselon.png"/>`
-   `\arg(min/max)\limits_{ ... }`
    -   `<span>` exemple : `\argmin\limits_{u \in \Delta} \| Y - X \beta \|` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/argmin.png"/>`
-   `\inverse [stuff]` : A⁻¹
-   `\isdef` : `<img style="width : 1em; vertical-align:middle" src="./desc_img/isdef.png"/>`
-   `\positive [stuff]` :
    -   `<span>`exemple : `\positive{ x- \frac{\log u}{n - p + 1}}` `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/positive.png"/>`

### probability :

-   `\petitop [of what]`
-   `\grandop [of what]`
-   `\proba [of what]` : ℙ[ ... ]
-   `\esperance [of what]` : 𝔼[ ... ]
-   `\variance [of what]` : 𝕍[ ... ]
-   `\esperanceloi [loi] [of what]`
    -   exemple : `\esperanceloi {X|Y} {\frac{U_n}{\pi}}` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/esperanceloi.png"/>`
-   `\esperancesachant [of what] [condition]` : 𝔼[ ... | ... ]
-   `\esploisach [loi] [of what] [condition]` : 𝔼[ ... | ... ]
    -   exemple : `\esploisach {X|Y} {\frac{U_n}{\pi}} {Y \leq 1}` : `<img style="height : 2.3em; vertical-align:middle" src="./desc_img/esploisach.png"/>`

### generic

-   `\lorem` : lorem ipsum generic text

### Theorems environments :

-   `\thm` : Théorème
-   `\prop` : Proposition
-   `\lem` : Lemme
-   `\cor` : Corollaire
-   `\exo` : Exercice
-   `\rem` : Remarque

### custom colors :

colors from [flat ui colors](https://flatuicolors.com/) have been added to the template :

here are a few examples :

-   `flatuicolors_orange_light` : `<strong style="color : #f5cba7;">` #f5cba7 `</strong>`
-   `flatuicolors_orange` : `<strong style="color : #ff9f43;">` #ff9f43 `</strong>`
-   `flatuicolors_red_light` : `<strong style="color : #e66767;">` #e66767 `</strong>`
-   `flatuicolors_imperial` : `<strong style="color : #222f3e;">` #222f3e `</strong>`
-   `flatuicolors_aqua` : `<strong style="color : #01a3a4;">` #01a3a4 `</strong>`

👀 all of them can be seen in the `include/definition/custom_colors.tex` file.

## Packages :

-   inputenc
-   fontenc
-   graphicx
-   amsmath
-   amssymb
-   hyperref
-   dsfont
-   babel
-   url
-   pgfplots
-   stmaryrd
-   mathtools

### fonts

-   avant
-   dsfont
-   fontawesome5
-   mfirstuc

### others

-   float
-   mutlirow
-   geometry
-   tikz
-   framed
-   multicol
-   awesomebox

### table of content

-   minitoc

### display code withtsyntax highlight

-   minted

---

```zsh

```

```latex

```

```python

```
