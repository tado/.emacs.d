;; package
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
 	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; basic settings
(setq default-directory "~/")
(setq command-line-default-directory "~/")
(set-frame-size (selected-frame) 110 48)
(set-language-environment  'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode t)
(setq-default line-spacing 3)
(add-to-list 'default-frame-alist '(alpha . 90))
(setq make-backup-files nil)
(setq auto-save-default nil)

;;theme
(load-theme 'manoj-dark t)

;;ddskk
;;(when (require 'skk nil t)
;;(global-set-key (kbd "C-x j") 'skk-auto-fill-mode)
;;(setq default-input-method "japanese-skk")
;;(require 'skk-study))

;;font
(set-face-attribute 'default nil :family "SF Mono" :height 120)
(set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Noto Sans CJK JP"))

;;cursor
(setq-default cursor-type '(bar . 3))

;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;;TidalCycles
(add-to-list 'load-path "~/.emacs.d/tidal")
(require 'haskell-mode)
(require 'tidal)
;;(load-file "~/.emacs.d/tidal/tidal.el")
;;(setq tidal-interpreter "~/AppData/Roaming/local/bin/stack.exe")
;;(setq tidal-interpreter-arguments
;;      (list "repl"
;;            "--ghci-options=-XOverloadedStrings"
;;        ))


;;C++
(defun my-c-c++-mode-init () (setq c-basic-offset 4))
(add-hook 'c-mode-hook 'my-c-c++-mode-init)
(add-hook 'c++-mode-hook 'my-c-c++-mode-init)

;; markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
