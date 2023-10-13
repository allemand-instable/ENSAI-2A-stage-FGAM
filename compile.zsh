my $evince_synctex_path = '$HOME/bin/evince_synctex.zsh';

if (!-x $evince_synctex_path) {
    echo "evince_synctex script should be exectuable, setting permission to 755"
    chmod 0755, $evince_synctex_path;
}

latexmk -pdf -bibtex -pv -time
