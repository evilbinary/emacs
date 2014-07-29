(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(transient-mark-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;========================================
;;�������
;;========================================
;;���ù�����
(tool-bar-mode -1)
;;�ر���������
(setq inhibit-startup-message t)

;;========================================
;; ����
;;========================================
;;F10 ��ʾ/���ز˵��� ;; M-x menu-bar-open
(define-key global-map (kbd "<f10>") 'menu-bar-mode)
;;͸������

(global-set-key [(f12)] 'loop-alpha)  ;;ע�������е�F8 , ���Ըĳ�����Ҫ�İ���  
  
(setq alpha-list '((95 55) (100 100)))  
  
(defun loop-alpha ()  
  (interactive)  
  (let ((h (car alpha-list)))                  
    ((lambda (a ab)  
       (set-frame-parameter (selected-frame) 'alpha (list a ab))  
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))  
       ) (car h) (car (cdr h)))  
    (setq alpha-list (cdr (append alpha-list (list h))))  
    )  
)  
;;���뷨
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)

;;========================================
;; ������
;;========================================
;;������ʾ�ɶ�����
(show-paren-mode t)
;;��ʾ�к�
(setq column-number-mode t)

;;========================================
;; ������
;;========================================

;;========================================
;; ״̬��
;;========================================
 
;;��ʾʱ��
(display-time)
 
;;-----------------------------------------
;; ʱ���ʽ
;;-----------------------------------------
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
 
;;��ʾ�к�
(setq column-number-mode t)
;;��ʾ���к�  
(column-number-mode t)
 
;;��������ʾ %f ����������·�� %p ҳ��ٷ��� %l �к�
(setq frame-title-format "%f")

;;========================================
;; ��ɫ����
;;========================================
 
;; ָ����ɫ
(set-cursor-color "lightgreen")
 
;; �����ɫ
(set-mouse-color "black")
 
;;-----------------------------------------
;; ������������ɫ
;;-----------------------------------------
(set-foreground-color "white")
(set-background-color "black")
(set-border-color "green")
 
;;-----------------------------------------
;; �﷨������ʾ������ѡ�񣬶���ѡ�� ;;ǰ���ͱ���ɫ
;;-----------------------------------------
(set-face-foreground 'highlight "yellow")
(set-face-background 'highlight "green")
(set-face-foreground 'region "tan")
(set-face-background 'region "azure4")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
(set-face-foreground 'font-lock-comment-face "YellowGreen") 
(set-face-foreground 'font-lock-string-face "green")

;;========================================
;; �ر���չ 
;;========================================
(setq x-select-enable-clipboard t)
(add-to-list 'load-path "D:/Program Files/sbcl/")
(add-to-list 'load-path "D:/Program files/slime/")
(setq inferior-lisp-program "sbcl")
(require 'slime-autoloads)
(slime-setup '(slime-fancy))

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)


(add-to-list 'load-path "D:/Program Files/emacs-23.4/site-lisp")
;(load "gambit")
;(require 'gambit)

;;scheme
;(add-to-list 'load-path " C:/Program Files/MIT-GNU Scheme/lib/")
;(add-to-list 'load-path " C:/Program Files/MIT-GNU Scheme/bin/")
;(setq scheme-program-name "gsi -:d-")
;(require 'xscheme)
;(load-library "scheme")

