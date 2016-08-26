(setq inhibit-splash-screen t)

(scroll-bar-mode -1)

(setq completion-ignore-case t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq ring-bell-function 'ignore)
