;;; funcs.el --- Utility functions for the flow layer

;;; Commentary:
;; 

(when (configuration-layer/package-usedp 'lsp-javascript-flow)
  (defun spacemacs/enable-lsp-javascript-flow ()
    (lsp-javascript-flow-enable)
    (flycheck-mode)
    (company-mode)
    (local-set-key (kbd "M-.") #'xref-find-definitions))

  (defun spacemacs/enable-js-flycheck-lsp ()
    (require 'lsp-flycheck)
    (lsp-flycheck-add-mode 'js-mode)
    (lsp-flycheck-add-mode 'js2-mode)))

;;; funcs.el ends here
