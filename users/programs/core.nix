{ config, lib, pkgs, ... }: {

  home-manager.users.rafiyq.programs = {
    emacs = {
      enable = true;
      package = pkgs.emacsGit;
    };

    git = {
      enable = true;
      userEmail = "rafiyqw@tutanota.com";
      userName = "Rafiyq Widianto";
    };

    tmux = {
      enable = true;
      historyLimit = 500;
      keyMode = "emacs";
      terminal = "screen-256color";
      extraConfig = ''
        set -g mouse on
        set -g status-bg colour234
        set -g status-fg colour205
        set -g status-left ' #[fg=colour250]#S '
 
        setw -g windows-status-current-format ' #I#[fg=colour250]:[fg=colour255]#W#[fg=colour50]#F '
        setw -g windows-status-format ' #I#[fg=colour236:#[fg=colour250]#W#[fg=colour244]#F '

        set -g status-right '#[fg=colour233,bg=clour241,bold] %a %d %b #[fg=colour233,bg=colour245,bold] %I:%M:%P '

        set -g pane-active-border-style fg=colour205
      '';
    };

    vim = {
      enable = true;
      settings = {
        expandtab = true;
        number = true;
        shiftwidth = 2;
        tabstop = 2;
      };
      extraConfig = ''
        syntax on
        set hlsearch
      '';
    };

    zsh = {
      enable = true;
      autocd = true;
      defaultKeymap= "emacs";
      dotDir = ".config/zsh";
      enableAutosuggestions = true;
      enableCompletion = true;
      history = {
        size = 500;
        save = 1000;
        path = ".config/zsh/zsh_history";
      };
      localVariables = {
        PROMPT = "%B%F{171}%n%F{135}@%F{99}%M%b %F{81}%~ %f%# ";
        #RPROMPT = \$vcs_info_msg_0_ ;
      };
      shellAliases = {
        ls = "ls --color=auto";
        ll = "ls -AlFH";
        grep = "grep --color=auto";
        fgrep = "fgrep --color=auto";
        egrep = "egrep --color=auto";
      };
    };

  };
}
