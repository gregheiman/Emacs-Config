;;; C/C++
(define-skeleton header-guard-skeleton
    "Header guard skeleton for .h and .hpp files"
    nil
    "#ifndef _" (upcase (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))) "_H\n"
    "#define _" (upcase (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))) "_H\n"
    "\n"
    _"\n"
    "\n"
    "#endif"
)

(define-skeleton c-if-statement
  "If statement for C/C++ languages"
  nil
  "if (" @ - ")" \n
  -4 "{" \n
  \n
  -4 "}"
)

(define-skeleton c-elif-statement
  "Else if statement for C/C++ languages"
  nil
  "else if (" _ ")" \n
  -4 "{" \n
  \n
  -4 "}"
)

(define-skeleton c-else-statement
  "Else statement for C/C++ languages"
  nil
  "else" \n
  -4 "{" \n
  @ - \n
  -4 "}"
)

(define-skeleton c-main-function
  "Main function for C/C++ languages"
  nil
  "int main(int argc, char *argv[])" \n
  -4 "{" \n
  @ - \n
  "return 0;" \n
  -4"}"
)

;;; Java
(define-skeleton java-class-skeleton
  "Template for .java class"
  "Package Name: "
  "package " str \n
  -4\n
  -4 "class " (file-name-sans-extension (file-name-nondirectory (buffer-file-name))) " {" \n
  _ \n
  -4 "}"
)

(define-skeleton java-main-function
  "Main function for the Java language"
  nil
  "public static void main(String[] args) {" \n
  @ - \n
  -4 "}"
)

(define-skeleton java-if-statement
  "If statment for the Java language"
  nil
  "if (" @ - ") {" \n
  \n
  -4 "}"
)

(define-skeleton java-elif-statement
  "Else if statement for the Java lanaguage"
  nil
  "else if (" @ - ") {" \n
  \n
  -4 "}"
)

(define-skeleton java-else-statement
  "Else statement for the Java language"
  nil
  "else {" \n
  @ - \n
  -4 "}"
)

;;; Org
(define-skeleton org-src-block
  "Source block for org mode"
  nil
  "#+begin_src " @ - \n
  \n
  "#+end_src"
)

