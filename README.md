# Stage 2A [ENSAI] : Modèles additifs avec covariables contaminées et généralisation du modèle additif aux données fonctionnelles 

<a  href="https://mg.readthedocs.io/latexmk.html">
    <img src="https://custom-icon-badges.demolab.com/badge/-LaTeX & Latexmk-plum?style=for-the-badge&logo=terminal&logoColor=black">
</a>

<a  href="./src/bibliography/main.bib">
    <img src="https://custom-icon-badges.demolab.com/badge/-références bibtex-f19066?style=for-the-badge&logo=book&logoColor=black">
</a>

<a  href="https://github.com/allemand-instable/ENSAI-2A-stage-FGAM/releases/">
    <img src="https://custom-icon-badges.demolab.com/badge/-Télécharger le rapport-38ada9?style=for-the-badge&logo=download&logoColor=black">
</a>

> Pour plus d'informations sur l'utilisation du code source se référer à mon repo [LATEX-TEMPLATE](https://github.com/allemand-instable/LaTeX-Template)

Rapport de stage de 2e année dans le cadre des stages pour les élèves du cursus ingénieur de l'ENSAI (promo 2023). Le document accessible ici est le document qui a été corrigé après délibération du jury (essentiellement des fautes de frappes ou des oublis, artéfats de ré-rédaction, et erreurs mathématiques mineures ). En espérant que vous pourrez vous aider du rapport et des attendus mais surtout que vous apprécierez le contenu !

## Introduction

Pendant le cursus 2A réalisé à l’ENSAI, les étudiants découvrent la régression non paramétrique qui permet d’estimer la loi conditionnelle d’une réponse vis à vis de covariables sans hypothèse sur la forme de la relation entre la réponse et les covariables. On peut alors complexifier les modèles de données que l’on considère en tirant avantage des bénéfices de l’approche paramétrique, aux vitesses de convergence rapide des estimateurs, et de l’approche non paramétrique, flexible et plus robuste à l’erreur de choix du modèle. On appelle cela une méthode « semi-paramétrique ». Un modèle semi-paramétrique courant est le modèle partiellement linéaire avec la composante non paramétrique supposée additive. L’ensemble des concepts et des motivations sont introduites dans ce stage.


Il existe un modèle de données appelées données fonctionnelles qui sont de plus en plus présentes dans différents champs d’application de la statistique : santé, sport, industrie . . .. De la théorie a déjà été produite sur la régression fonctionnelle. Peut-on faire de la régression semi-paramétrique fonctionnelle ? Le sujet de ce stage est l’étude à partir de diverses res-sources bibliographiques sur la régression semi paramétrique, de comprendre dans un premier lieu à partir du savoir d’un étudiant de 2e année du cursus ingénieur de l’ENSAI la méthodologie derrière la régression semi-paramétrique du modèle partiellement-linéaire dans le cadre réel. Enfin on pourra rendre compte des difficultés rencontrées ainsi que les différences et similarités dans les approches lors de l’extension des méthodes du modèle additif au cadre fonctionnel.


## compiler le rapport :


<a  href="https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH">
    <img src="https://custom-icon-badges.demolab.com/badge/shell-zsh-f53b57?style=for-the-badge&logo=terminal&logoColor=white">
</a>

```zsh
zsh compile.zsh -r
```




