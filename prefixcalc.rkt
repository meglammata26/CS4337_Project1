#lang racket
;function that tokenizes input into a list
(define (tokenize input-str)
    ;error handling
    (with-handlers
    ([(lambda (exn) #t)
      (lambda (exn)
        (displayln (format "Error: Invalid input - ~a" (exn-message exn)))
        '())])
    ;checking if input is empty or whitespace
    (when (or (string=? input-str "")
              (string=? (string-trim input-str) ""))
      (raise-user-error "Empty expression"))

      (let loop ([chars (string->list input-str)]
                [current-token ""]
                [tokens '()])

       (cond 
       ;processing any final tokens
       [(null? chars)
       (if (string=? current-token "")
            (reverse tokens)
            (reverse (cons current-token tokens)))]
        ;operator
        [(member (car chars)'(#\+ #\* #\/ #\-))
        (let ([new-tokens (if(string=? current-token "")
                                tokens
                                (cons current-token tokens))])
        (loop (cdr chars) "" (cons (string (car chars)) new-tokens )))]
        ;$ reference for previous expressions
        [(char=? (car chars) #\$)
        (let ([new-tokens (if (string=? current-token "")
                                tokens
                                (cons current-token tokens))])
        (loop (cdr chars) "$" new-tokens))]
        ;whitespace
        [(char-whitespace? (car chars))
        (let ([new-tokens (if (string=? current-token "")
                                tokens
                                (cons current-token tokens))])
        (loop (cdr chars) "" new-tokens))]
        ;building tokens for valid characters
        [(or (char-numeric? (car chars))
                (char=? (car chars) #\.))
                (loop (cdr chars)
                (string-append current-token (string (car chars)))
                tokens)]
        ;invalid characters
        [else 
        (raise-user-error (format "Invalid character: ~a" (car chars)))]))))

        ;test cases to validate logic
        (displayln (tokenize "+ 3 4")) 
        (displayln (tokenize " "))
        (displayln (tokenize "kfjgnlfgjkn"))