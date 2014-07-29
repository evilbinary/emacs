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
;;外观设置
;;========================================
;;禁用工具栏
(tool-bar-mode -1)
;;关闭启动画面
(setq inhibit-startup-message t)

;;========================================
;; 键绑定
;;========================================
;;F10 显示/隐藏菜单栏 ;; M-x menu-bar-open
(define-key global-map (kbd "<f10>") 'menu-bar-mode)
;;透明按键

(global-set-key [(f12)] 'loop-alpha)  ;;注意这行中的F8 , 可以改成你想要的按键  
  
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
;;输入法
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)

;;========================================
;; 缓冲区
;;========================================
;;高亮显示成对括号
(show-paren-mode t)
;;显示列号
(setq column-number-mode t)

;;========================================
;; 回显区
;;========================================

;;========================================
;; 状态栏
;;========================================
 
;;显示时间
(display-time)
 
;;-----------------------------------------
;; 时间格式
;;-----------------------------------------
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
 
;;显示列号
(setq column-number-mode t)
;;显示行列号  
(column-number-mode t)
 
;;标题栏显示 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")

;;========================================
;; 颜色设置
;;========================================
 
;; 指针颜色
(set-cursor-color "lightgreen")
 
;; 鼠标颜色
(set-mouse-color "black")
 
;;-----------------------------------------
;; 背景和字体颜色
;;-----------------------------------------
(set-foreground-color "white")
(set-background-color "black")
(set-border-color "green")
 
;;-----------------------------------------
;; 语法高亮显示，区域选择，二次选择 ;;前景和背景色
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
;; 必备扩展 
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

