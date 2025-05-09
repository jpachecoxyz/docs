((org-mode . ((eval . (add-hook 'before-save-hook
                                #'denote-org-convert-links-to-file-type
                                nil t)))))
