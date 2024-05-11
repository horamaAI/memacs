
;; loads configs from org-file 'init_configs.org'
;; needed to use it with local emacs:
;; 1. create symbolic link to this initialization file, from the emacs home directory: ~ln -s $MEMACS/init.el ~/.emacs.d/~
;; 2. create symbolic link to 'init_configs.el': ~ln -s $MEMACS/init_configs.el ~/.emacs.d/~ ('init_configs.el' is generated automatically after evaluating this initialization file)
(setq memacs "~/Documents/repos/org/memacs")
(org-babel-load-file (expand-file-name "init_configs.org" memacs))

