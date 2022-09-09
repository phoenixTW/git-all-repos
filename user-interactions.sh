## Text Style
bold=$(tput bold)
normal=$(tput sgr 0)

## Color
green=$(tput setaf 2)
blue_alert=$(tput setaf 99)
magenta=$(tput setaf 5)

success() {
  echo "${green}$*${normal}"
}

alert() {
  echo "${blue_alert}$*"$(tput sgr 0)
}

welcome() {
    echo "${magenta}
            __  ___  ___             _                      _    _   _    _    __ 
        /__   |    |   |_|  | |  |_)     /\   |   |     |_)  |_  |_)  / \  (_  
        \_|  _|_   |   | |  |_|  |_)    /--\  |_  |_    | \  |_  |    \_/  __) 
                                                                                
    ${normal}"
    echo "Built with ♥ By ${bold}Kaustav Chakraborty${normal} (@phoenixTW)"
    echo "Visit to https://github.com/phoenixTW/github-all-repos for more insights\n\n\n\n\n\n"
}
