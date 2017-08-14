if(interactive()){
   library(colorout)  # Color to nvim console

   # Use text based web browser to navigate through R docs after help.start()
   # if you cannot run a graphical web browser (e.g. when you are in the
   # Linux console):
    
    if(Sys.getenv("DISPLAY") == ""){
        if(Sys.getenv("TMUX") != "")
            options(browser = function(u) system(paste0("tmux new-window 'w3m ", u, "'")))
        else if(Sys.getenv("NVIMR_TMPDIR") != "")
            options(browser = function(u) .C("nvimcom_msg_to_nvim",
                                             paste0('StartTxtBrowser("w3m", "', u, '")')))
    }
}

# The `X11.options()` is used to choose the position and dimensions of the X11 graphical device.
grDevices::X11.options(width = 4.5, height = 4, ypos = 0,
                          xpos = 1000, pointsize = 10)

# Set default mirror for packages
options(repos=structure(c(CRAN="https://cran.uib.no/")))

# Options

# End prompt
print("~/.Rprofile loaded buddy")


