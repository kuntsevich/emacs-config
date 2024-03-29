;; yasnippet
(require 'yasnippet-bundle)
(setq yas/prompt-functions '(yas/dropdown-prompt
			     yas/ido-prompt
			     yas/completing-prompt))

;; auto-complete
(add-to-list 'load-path (concat config-dir "vendor/auto-complete"))
(require 'auto-complete-config)
(add-to-list 'ac-modes 'erlang-mode)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
(ac-config-default)

;; markdown-mode
(add-to-list 'load-path (concat config-dir "vendor/markdown-mode"))
(autoload 'markdown-mode "markdown-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; haml-mode

;;(require 'haml-mode)

;; sass-mode.el
(require 'sass-mode)

;; yaml
(autoload 'yaml-mode "yaml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; css
(setq css-indent-offset 2)

;; scss
(add-to-list 'load-path (concat config-dir "vendor/scss-mode"))
(autoload 'scss-mode "scss-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(setq scss-compile-at-save nil)

;; coffee
(add-to-list 'load-path (concat config-dir "vendor/coffee-mode"))
(autoload 'coffee-mode "coffee-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(setq-default tab-width 2)

;; git
(add-to-list 'load-path (concat config-dir "vendor/magit"))
(autoload 'magit-status "magit" nil t)
(global-set-key (kbd "C-c g") 'magit-status)

;; zencoding
(add-to-list 'load-path (concat config-dir "vendor/zencoding"))
(require 'zencoding-mode)
(add-hook 'rhtml-mode-hook 'zencoding-mode)

;; nginx config files
(add-to-list 'load-path (concat config-dir "vendor/nginx-mode"))
(autoload 'nginx-mode "nginx-mode" nil t)
