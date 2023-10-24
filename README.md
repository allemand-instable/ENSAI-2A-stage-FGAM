# LaTeX Template

A simple LaTeX Template, with nice structure, and commands for ease of use

## Requirements / Dependencies

| software           | what for ?                                                        | installation link                                                        |
| ------------------ | ----------------------------------------------------------------- | ------------------------------------------------------------------------ |
| latexmk            | compile with complex options and watch for changes                | [official doc](https://mg.readthedocs.io/latexmk.html)                   |
| zsh [for now]      | shell targeted for the scripts "compile", "clear_aux" and "watch" | [oh-my-zsh tuto](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) |
| latex              | seems obvious                                                     | [official doc](https://www.latex-project.org/get/)                       |
| [linux] evince     | pdf viewer                                                        |                                                                          |
| [macos] skim       | pdf viewer                                                        | [official website](https://skim-app.sourceforge.io/)                     |
| [windows] gsview32 | pdf viewer                                                        |                                                                          |

## compiling and watching using `latexmk` :

➤ efficient way to compile and watch for changes in your LaTeX files

If you use zsh (which I do) : [or just copy paste what's inside into your terminal]

```zsh
zsh compile.zsh
```

```zsh
zsh watch.zsh
```

### flags

```zsh
zsh compile.zsh -d      # compiles documentation only
zsh compile.zsh -r      # compiles report only
zsh compile.zsh -t      # compiles tests only
zsh compile.zsh -h      # flags help
# —— Exclusive to compile ———
zsh compile.zsh         # compile all files (doc/report/test)
```

The same applies to watch script

### other shells

if you use another shell (bash/...) you might have to adapt the script [chatGPT if you are hurry] to the targeted shell.

## project strcuture

```
📦LaTeX-Template
 ┣ 📂aux_files              ‹◀ latex compiling aux files (cache)
 ┣ 📂doc                    ‹◀ github README
 ┣ 📂out                    ‹◀ compiled files
 ┃ ┣ 📜documentation.pdf
 ┃ ┣ 📜rapport.pdf
 ┃ ┣ 📜tests.pdf
 ┣ 📂src                    ‹◀ actual project source code
 ┣ 📜.latexmkrc             ‹◀ compile settings
 ┣ 📜clear_aux.zsh
 ┣ 📜compile.zsh
 ┗ 📜watch.zsh
```

## documentation

The documentation can be accessed easily in a pdf format at the location :

```
📦LaTeX-Template
 ┣ 📂out                    ‹◀ compiled files
 ┃ ┣ 📜documentation.pdf        ← formatted custom commands and settings documentation
 ┃ ┣ 📜rapport.pdf
 ┃ ┣ 📜tests.pdf
```

If the user prefers in a markdown format : it can be found [here](./doc/doc.md) (📁 `doc/doc.md`)

## testing

```
📦LaTeX-Template
 ┣ 📂out                    ‹◀ compiled files
 ┃ ┣ 📜documentation.pdf
 ┃ ┣ 📜rapport.pdf
 ┃ ┣ 📜tests.pdf                ← testing commands and environments
```

## Packages (todo):

 <!-- TODO -->

The project `Latex-Template` relies on the following latex packages

| package      | used for                                             | `include/pacakges/` |
| ------------ | ---------------------------------------------------- | ------------------- |
| inputenc     | utf-8 input                                          |                     |
| fontenc      | font encoding                                        |                     |
| graphicx     | including images                                     |                     |
| amsmath      | maths                                                |                     |
| amssymb      | maths                                                |                     |
| hyperref     | url links with custom text                           |                     |
| dsfont       | double stroke : better than `\mathbb`                |                     |
| babel        | french names for envs                                |                     |
| url          | typesetting URLs                                     |                     |
| pgfplots     | latex curve graphs                                   |                     |
| stmaryrd     | symbols for computer science                         |                     |
| mathtools    | convenient convergence arrows                        |                     |
| —            | —                                                    | —                   |
| avant        | font                                                 |                     |
| fontawesome5 | icons [`\info` / `\warn` ...]                        |                     |
| mfirstuc     | capitalizing the first letter of a word              |                     |
| float        | improved interface for floating objects              |                     |
| multirow     | table cells spanning multiple rows                   |                     |
| awesomebox   | env with bar at the left [`\info` / `\warn` ...]     |                     |
| minitoc      | table of content of the chapter                      |                     |
| minted       | code highlight                                       |                     |
| table        | tables                                               |                     |
| xcdraw       | drawing tables with TikZ                             |                     |
| xcolor       | custom colors                                        |                     |
| array        | extending the array and tabular environments         |                     |
| booktabs     | publication quality tables                           |                     |
| tabularx     | beautiful tables with adjustable-width column        |                     |
| algorithm2e  | algorithm environments                               |                     |
| footmisc     | make sure footnotes are bellow                       |                     |
| comment      | commenting out large blocks of code with env         |                     |
| tikz         | creating graphics programmatically                   |                     |
| tikz-cd      | creating commutative diagrams                        |                     |
| framed       | framed or shaded regions that can break across pages |                     |
| multicol     | typesetting documents with multiple columns          |                     |
| changepage   | margin adjustment and detection of odd/even pages    |                     |
---

```zsh

```

```latex

```

```python

```
