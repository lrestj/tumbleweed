if $TERM == "xterm-kitty"
    set mouse=a
    try
        " undercurl support
        let &t_Cs = "\e[4:3m"
        let &t_Ce = "\e[4:0m"
    catch
    endtry
    " Change the cursor in different modes
    let &t_SI = "\e[5 q"
    let &t_SR = "\e[3 q"
    let &t_EI = "\e[1 q"
    " vim hardcodes background color erase even if the terminfo file does
    " not contain bce. This causes incorrect background rendering when
    " using a color theme with a background color.
    let &t_ut=''
endif

