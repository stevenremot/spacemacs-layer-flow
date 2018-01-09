;;; funcs.el --- Utility functions for the flow layer

;;; Commentary:
;; 

(when (configuration-layer/package-usedp 'lsp-javascript-flow)
  (defun spacemacs/enable-js-flycheck-lsp ()
    (lsp-flycheck-add-mode 'js-mode)
    (lsp-flycheck-add-mode 'js2-mode)))

;;; funcs.el ends here
