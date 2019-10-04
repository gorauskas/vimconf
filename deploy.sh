#!/usr/bin/env bash
# Created: 2019-10-03 21:23:55
# Modified: 2019-10-03 21:24:53
# Copyright (C) 2019 by Jonas Gorauskas

export PLATFORM=`uname | cut -d"-" -f1`

if [[ "$PLATFORM" == "CYGWIN_NT" || "$PLATFORM" == "MINGW64_NT" ]]; then

    echo "setup on windows"
    cp ./_vimrc ${HOME}/_vimrc
    cp -R ./.vim ${HOME}/
    mv ${HOME}/.vim ${HOME}/vimfiles

else
    echo "no setup is needed on other systems ..."
fi

exit 0
