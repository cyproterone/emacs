;;#################### ########### ####################
;;#################### Helm Region ####################
;;#################### ########### ####################

(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (define-key global-map [remap find-file] 'helm-find-files)
  (define-key global-map [remap occur] 'helm-occur)
  (define-key global-map [remap list-buffers] 'helm-buffers-list)
  (define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
  (define-key global-map [remap execute-extended-command] 'helm-M-x)
  (define-key global-map [remap apropos-command] 'helm-apropos)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point))


(use-package helm-lsp
  :ensure t
  :commands helm-lsp-workspace-symbol)


(use-package helm-mode-manager
  :ensure t)


(use-package helm-themes
  :ensure t)


;;#################### END ####################
(provide 'init-helm)
