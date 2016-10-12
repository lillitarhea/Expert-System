
(defrule main-house
(initial-fact)
=>
(printout t "====================================================== "crlf)
(printout t "   Dream Home Suggestion Expert System                 "crlf)
(printout t "   Programming by: Lillita Rhea D'souza"crlf)
(printout t "     A simple expert system which attempts to identify "crlf)
(printout t "     a house based on its characteristics.           "crlf)
(printout t "====================================================== "crlf)


(printout t" Do you want to live in a building?(yes/no) ")
(assert(why))
(assert(building(read))))

;;;======================================================
(defrule non-building
(building no)
=>
(printout t"Do you want more than two storeys?(yes/no) ")
(assert(two-storeys(read))))

;;;======================================================

(defrule two-storeys-yes
(two-storeys yes)
=>
(printout t"Your house is a cottage" crlf)
(bind $?house cottage)
(assert(house-is $?house)))
;;;======================================================

(defrule two-storeys-no
(two-storeys no)
=>
(printout t"Does it have a garden ?(yes/no) ")
(assert(garden(read))))

;;;======================================================



(defrule garden-yes
(garden yes)
=>
(printout t"Your house is a Bungalow" crlf)
(bind $?house bungalow)
(assert(house-is $?house)))
;;;======================================================
(defrule garden-no
(garden no)
=>
(printout t"Your house is a raw house" crlf)
(bind $?house rawhouse)
(assert(house-is $?house)))
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
(defrule building
(building yes)
=>
(printout t"Does it have a porch ?(yes/no) ")
(assert(porch(read))))

;;;======================================================

(defrule porch-yes
(porch yes)
=>
(printout t"Your house is a penthouse" crlf)
(bind $?house penthouse)
(assert(house-is $?house)))
;;;======================================================

(defrule porch-no
(porch no)
=>
(printout t"Does it have a single main room ?(yes/no) ")
(assert(room(read))))

;;;======================================================



(defrule room-yes
(room yes)
=>
(printout t"Your house is a studio apartment" crlf)
(bind $?house studioapartment)
(assert(house-is $?house)))
;;;======================================================
(defrule room-no
(room no)
=>
(printout t"Your house is a Resident apartment" crlf)
(bind $?house residentapartment)
(assert(house-is $?house)))

;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************

(defrule explanation
(why)
=>
(printout t "==============================" crlf)
(retract 0)
(facts)
(printout t "==============================" crlf)
)



