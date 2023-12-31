;; extends

;WIP will fix before release
;TODO tasks to do when you have time
;FIX there are known bug
;NOTE info why implemented like this 
;XXX danger! it works but i don't know logic
;TEST you should test after
;HACK you can improve
;ERROR error you discovered but not yet fix

("text" @annotation.wip
 (#eq? @annotation.wip "WIP"))
("text" @annotation.todo
 (#eq? @annotation.todo "TODO"))
("text" @annotation.fix
 (#eq? @annotation.fix "FIX"))
("text" @annotation.note
 (#eq? @annotation.note "NOTE"))
("text" @annotation.xxx
 (#eq? @annotation.xxx "XXX"))
("text" @annotation.test
 (#eq? @annotation.test "TEST"))
("text" @annotation.hack
 (#eq? @annotation.hack "HACK"))
("text" @annotation.error
 (#eq? @annotation.error "ERROR"))

;FIX NOTE python not without #
("text" @annotation.wip
 (#eq? @annotation.wip "#WIP"))
("text" @annotation.todo
 (#eq? @annotation.todo "#TODO"))
("text" @annotation.fix
 (#eq? @annotation.fix "#FIX"))
("text" @annotation.note
 (#eq? @annotation.note "#NOTE"))
("text" @annotation.xxx
 (#eq? @annotation.xxx "#XXX"))
("text" @annotation.test
 (#eq? @annotation.test "#TEST"))
("text" @annotation.hack
 (#eq? @annotation.hack "#HACK"))
("text" @annotation.error
 (#eq? @annotation.error "#ERROR"))

