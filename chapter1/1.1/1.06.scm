; 新版本if:
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; new-if版求平方根程序:
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; 会栈溢出。
; 因为if是先判断，后执行其中之一的参数并返回其值。
; 而new-if是普通函数，会根据scheme解释器的应用序求值规则，先将参数值算出来，然后
; 才传入new-if进行判断。这样就会导致：无论第一个参数是什么，后面的参数都要先执行
; 一次，那么就会无限调用sqrt-iter，即无限循环。
