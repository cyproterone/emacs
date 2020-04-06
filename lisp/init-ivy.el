;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :ensure t
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-wrap t)
  (ivy-on-del-error-function nil)
  (ivy-height 15)
  :config
  (ivy-mode t))


;; replace default searches
(use-package counsel
  :ensure t
  :after (ivy)
  :bind (("C-p" . counsel-M-x)
         ("C-o" . counsel-find-file)
         :map search-command-map
              ("C-r" . counsel-rg))
  :config
  (counsel-mode))


;; prettier ivy
(use-package ivy-rich
  :ensure t
  :after (ivy counsel)
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line)
  (ivy-rich-mode t))


;; search in buffer
(use-package swiper
  :ensure t
  :bind (:map search-command-map
              ("C-f" . swiper)))


;;#################### END ####################
(provide 'init-ivy)
