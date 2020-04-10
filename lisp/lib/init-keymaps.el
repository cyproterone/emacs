;;#################### ############## ####################
;;#################### Keymaps Region ####################
;;#################### ############## ####################

;; search keymap
(bind-keys
  :prefix-map search-command-map
  :prefix "C-f")


;; replace keymap
(bind-keys
  :prefix-map replace-command-map
  :prefix "C-r")


;; dir keymap
(bind-keys
  :prefix-map dir-command-map
  :prefix "C-d")


;; vc keymap
(bind-keys
  :prefix-map vc-command-map
  :prefix "C-m")


;;#################### END ####################
(provide 'init-keymaps)
