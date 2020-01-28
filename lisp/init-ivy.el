;; ivy uses flx sorting if it's installed
(use-package flx)

(use-package ivy
  :after flx
  :diminish ivy-mode
  :commands ivy-mode
  :init
  (setq ivy-re-builders-alist
        ;; use regular matching in swiper
        '((swiper . ivy--regex-plus)
          ;; use fuzzy matching by default'
          (t . ivy--regex-fuzzy)))
  :bind (:map ivy-minibuffer-map
              ;; C-r selects previous candidate, like isearch
              ("C-r" . ivy-previous-line-or-history))
  :config
  (ivy-mode 1))

(provide 'init-ivy)
