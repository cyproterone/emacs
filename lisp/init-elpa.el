;;#################### ############### ####################
;;#################### Archives Region ####################
;;#################### ############### ####################
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)


;;#################### ############### ####################
;;#################### Requires Region ####################
;;#################### ############### ####################

;; renew on missing elpa dir
(let ((dir (expand-file-name "elpa" user-emacs-directory)))
  (unless (file-directory-p dir)
    (package-refresh-contents)))


;; require 'use-package
((lambda
  (pkg)
  (unless (package-installed-p pkg)
    (package-install pkg))
    (require pkg))
  'use-package)
(setq use-package-always-ensure t)


;; auto update
(use-package auto-package-update
  :custom
  (auto-package-update-interval 14)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t)
  :hook ((emacs-startup . auto-package-update-maybe)))


;; package mgr
(use-package epl
  :commands (epl-refresh))


;;#################### END ####################
(provide 'init-elpa)
