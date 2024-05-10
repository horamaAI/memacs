(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(org-babel-load-file (expand-file-name "init_configs.org" user-emacs-directory))

(load-user-file "init_configs.el")
