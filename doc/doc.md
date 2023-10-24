# preamble

from now on, every path will be considered relative to the 📁`src` folder.

# render options :

# A | set the render option

open `include/settings/render.tex` :

```
 ┣ 📂include
 ┃ ┣ 📂commands
 ┃ ┣ 📂definition
 ┃ ┣ 📂packages
 ┃ ┣ 📂settings
 ┃ ┃ ┣ 📜render.tex   ‹◀ [ that one ]
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

## B | use in document :

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

# Custom commands :

the `Latex-Template` project comes with a lot of custom pre-made commands to be used in your projects. These are specifically tailored to make mathematical documents, but there are many more to make writing and formatting easier as well.

## Special characters

| character | command  | definition      |
| --------- | -------- | --------------- |
| ℝᵈ        | `\R d`   | `\mathds{R}{d}` |
| ℕ         | `\N`     | `\mathds{N}`    |
| ℤ         | `\Z`     | `\mathds{Z}`    |
| ℚ         | `\Q`     | `\mathds{Q}`    |
| ℂ         | `\C`     | `\mathds{C}`    |
| 𝕂         | `\K`     | `\mathds{K}`    |
| 𝔽         | `\F`     | `\mathds{F}`    |
| 𝔼         | `\E`     | `\mathds{E}`    |
| ℙ         | `\P`     | `\mathds{P}`    |
| $\vdots$  | $\vdots$ | $\vdots$        |

## Editing

Here are some commands created to make editing easier

| command             | description                                               |
| ------------------- | --------------------------------------------------------- |
| `\lorem`            | lorem ipsum generic text                                  |
| `\editorwarn{text}` | creates a warning in the compiled document fot the author |

## Pseudo environments

```latex
\info{
    You can add some text

    Even break lines

    and even include $\vec a$ mathematical expressions

    \begin{equation}
        bro = bae
    \end{equation}

    but this is not an environment
}
```

| icon | command  |
| ---- | -------- |
| ℹ️   | `\info`  |
| 🧠   | `\brain` |
| 🧪   | `\flask` |
| ✈️   | `\avion` |
| ⚠️   | `\warn`  |
| ⚙️   | `\cogs`  |
| ✅   | `\chk`   |
| ❌   | `\nope`  |

# Custom Environments

environments are meant to be used in the following way

```latex
\begin{env}[params]

\end{env}
```

## Theorems environments :

| environment | environment | without counting |
| ----------- | ----------- | ---------------- |
| Théorème    | `thm`       | `thm*`           |
| Proposition | `prop`      | `prop*`          |
| Lemme       | `lem`       | `lem*`           |
| Corollaire  | `cor`       | `cor*`           |
| Exercice    | `exo`       | `exo*`           |
| Remarque    | `rem`       | `rem*`           |

# custom colors :

Some colors from [flat ui colors website](https://flatuicolors.com/) have been added to the template :

here are a few examples :

| color                     | custom color name [xcolor]                        |
| ------------------------- | ------------------------------------------------- |
| flatuicolors_orange_light | <strong style="color : #f5cba7;">#f5cba7</strong> |
| flatuicolors_orange       | <strong style="color : #ff9f43;">#ff9f43</strong> |
| flatuicolors_red_light    | <strong style="color : #e66767;">#e66767</strong> |
| flatuicolors_imperial     | <strong style="color : #222f3e;">#222f3e</strong> |
| flatuicolors_aqua         | <strong style="color : #01a3a4;">#01a3a4</strong> |

👀 all of them can be seen in the `include/definition/custom_colors.tex` file.
