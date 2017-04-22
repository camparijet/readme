(add-to-list 'load-path "~/.emacs.d/site-lisp/org") ;; cahnge it, according to your setting
(require 'org-install)
(require 'ox-publish)
(require 'ox-org)
(require 'ox-html)

(setq org-publish-project-alist
      '(("germany-news"
       	 :base-directory "."
  	 :publishing-directory "./output"
	 :base-extension "org"
	 :recursive t.
	 :body-only t
	 :publishing-function org-html-publish-to-html
	 :auto-preamble t
	 :html-preamble nil
	 :html-postamble nil
	 :exclude-tags ("private" "draft" "confidential")
	 :with-author nil
	 :with-creator nil
	 :with-timestamps nil
	 :with-foot-notes nil
	 :with-toc nil
	 :section-numbers nil
	 :with-tasks nil
	 :with-priority nil
	 :with-sub-superscript nil
	 )
	)
      )

(let 
    ((org-confirm-babel-evaluate nil))
  ;; add some pre-process i.e. substract org subtree
  (org-publish "germany-news")
  )
