#lang racket

(require "../../_lib_links/odysseus_all.rkt")
;
(provide (all-defined-out))

;  server settings
(define HOURS_SHIFT 3) ; to correct output time, regarding time of the scraping script on the remote server

; output post criteria
(define MAX_SYMBOLS 800)
(define MIN_SYMBOLS 100)

(define DEFAULT_PLACE #f)
(define CURRENT_LOCATION "ra_elx")

; how frequently to write to the file, when changing persistence
(define FILE_WRITE_FREQUENCY 500)

; cache directory for persistent data:
; (define CACHE_DIR "_cache")
(define CACHE_DIR (format "_cache/~a" CURRENT_LOCATION))
(define RESULT_DIR "results")
(define TREE_FILE "ra_it.tree")

(define MIN_MEMBER 3)
(define MAX_MEMBERS_IN_SCANNED_GROUPS 100000)
