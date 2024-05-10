
;; loads configs from org-file 'init_configs.org'
;; needed to use it with local emacs:
;; 1. create symbolic link to this initialization file: ~ln -s $MEMACS/init.el ~/.emacs.d/~
;; 2. create symbolic link to 'init_configs.el' (~ln -s $MEMACS/init_configs.el ~/.emacs.d/~). 'init_configs.el' is generated after evaluating this initialization file
(org-babel-load-file (substitute-in-file-name "$MEMACS/init_configs.org"))

