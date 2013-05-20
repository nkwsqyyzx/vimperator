#!/bin/sh

function install_vimperator_plugin()
{
    dir=".vimperator.$(date +%Y.%m.%d.%H.%M.%S)"
    echo $dir
    cd ~ && /usr/bin/env git clone https://github.com/nkwsqyyzx/vimperator.git $dir &
    wait $!

    for f in $(ls $dir);do mv $dir/$f ~/.vimperator/;done
    rm -rf $dir
    echo "done!"
}

install_vimperator_plugin &
wait $!
