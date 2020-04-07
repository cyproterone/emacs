;;#################### ################ ####################
;;#################### intrinsic Region ####################
;;#################### ################ ####################

;; highlight current line
(global-hl-line-mode 1)

;; line numbers
(global-display-line-numbers-mode)

;; softwrap text
(global-visual-line-mode t)

;; idle animation
(require 'zone)
(zone-when-idle (* 10 60))


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; highlight search match count
(use-package anzu
  :ensure t
  :custom
  (anzu-cons-mode-line-p nil)
  :config
  (global-anzu-mode t))


;; main theme
(use-package spacemacs-theme
  :ensure t
  :defer
  :custom
  (spacemacs-theme-comment-bg nil)
  :hook (after-init .
    (lambda ()
      (require 'spacemacs-common)
      (load-theme 'spacemacs-light t))))


;; powerline
(use-package doom-modeline
  :ensure t)
;; require manual init
(doom-modeline-mode t)


;;#################### END ####################
(provide 'init-themes)
