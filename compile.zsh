if [[ $(uname) == "Linux" ]]; then
    echo "please launch evince-synctex manually to get synctex working !"
else 
    echo "synctex supported by default."
fi

my $evince_synctex_path = '$HOME/bin/evince_synctex.zsh';

if (!-x $evince_synctex_path) {
    echo "evince_synctex script should be exectuable, setting permission to 755"
    chmod 0755, $evince_synctex_path;
}

if [ ! -d "./aux_files" ]; then
    echo "directory \"./aux_files\" does not exist"
    echo "creating directory \"./aux_files\""
    mkdir -p "./aux_files"
fi


# ⚠️ | fixing the error : I CANT WRITE TO FILE
# $  | when the include is in a subfolder
content_list=(src/content/*)
# removes "src/"
content_list_trimmed=("${content_list[@]/#src\//}")

for item in "${content_list_trimmed[@]}"; do
    echo "checking if directory $item is available in aux_files..."
    if [ ! -d "aux_files/$item" ]; then
        echo "creating directory $item in aux_files..."
        mkdir -p "aux_files/$item"
    else
        echo "directory $item already exists in aux_files..."
    fi
done

if [[ $1 == "-r" ]]; then
    latexmk -pdf -bibtex -pv -time -silent "src/rapport.tex"
elif [[ $1 == "-t" ]]; then
    latexmk -pdf -bibtex -pv -time -silent "src/tests.tex"
elif [[ $1 == "-h" ]]; then
    echo "▶ Documentation : -d"
    echo "▶ Rapport : -r"
    echo "▶ Tests : -t"
    echo "▶ All : no arg"
elif [[ $1 == "-d" ]]; then
    latexmk -pdf -bibtex -pv -time -silent "src/documentation.tex"
else
    latexmk -pdf -bibtex -pv -time
fi