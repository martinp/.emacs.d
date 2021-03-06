;;; init-dired.el --- configure dired  -*- lexical-binding:t -*-
;;; Commentary:
;;; Code:

(use-package dired
  :init
  ;; show human readable sizes in dired
  (setq dired-listing-switches "-alh")

  :bind (("M-<up>" . dired-up-directory))

  :config
  ;; group directories first in dired if supported
  (when (eq 0 (call-process insert-directory-program
                            nil nil nil "--group-directories-first"))
    (setq dired-listing-switches (concat dired-listing-switches
                                         " --group-directories-first"))))

(provide 'init-dired)

;;; init-dired.el ends here
