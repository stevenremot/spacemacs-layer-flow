;;; packages.el --- flow layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Steven Rémot <stevenremot@Inovias-MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `flow-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `flow/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `flow/pre-init-PACKAGE' and/or
;;   `flow/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst flow-packages
  '((lsp-javascript-flow
     :location (recipe :fetcher github
                       :repo "stevenremot/emacs-lsp-javascript-flow")))
  "The list of Lisp packages required by the flow layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")


(defun flow/init-lsp-javascript-flow ()
  (use-package lsp-javascript-flow
    :init (progn
            (add-hook 'js-mode-hook #'lsp-javascript-flow-enable)
            (add-hook 'js2-mode-hook #'lsp-javascript-flow-enable)
            (add-hook 'lsp-flycheck '(spacemacs/enable-js-flycheck-lsp)))))

;;; packages.el ends here
