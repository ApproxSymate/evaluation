(set-logic QF_AUFBV )
(declare-fun __arr32__image () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun targetColor () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  __arr32__image (_ bv3 32) ) (concat  (select  __arr32__image (_ bv2 32) ) (concat  (select  __arr32__image (_ bv1 32) ) (select  __arr32__image (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (=  false (=  ?B1 (concat  (select  targetColor (_ bv3 32) ) (concat  (select  targetColor (_ bv2 32) ) (concat  (select  targetColor (_ bv1 32) ) (select  targetColor (_ bv0 32) ) ) ) ) ) ) (=  false (=  (_ bv4294967295 32) ?B1 ) ) ) (=  (concat  (select  __arr32__image (_ bv11 32) ) (concat  (select  __arr32__image (_ bv10 32) ) (concat  (select  __arr32__image (_ bv9 32) ) (select  __arr32__image (_ bv8 32) ) ) ) ) ?B1 ) ) (=  (concat  (select  __arr32__image (_ bv19 32) ) (concat  (select  __arr32__image (_ bv18 32) ) (concat  (select  __arr32__image (_ bv17 32) ) (select  __arr32__image (_ bv16 32) ) ) ) ) ?B1 ) ) (=  false (=  (concat  (select  __arr32__image (_ bv7 32) ) (concat  (select  __arr32__image (_ bv6 32) ) (concat  (select  __arr32__image (_ bv5 32) ) (select  __arr32__image (_ bv4 32) ) ) ) ) ?B1 ) ) ) (=  false (=  (concat  (select  __arr32__image (_ bv15 32) ) (concat  (select  __arr32__image (_ bv14 32) ) (concat  (select  __arr32__image (_ bv13 32) ) (select  __arr32__image (_ bv12 32) ) ) ) ) ?B1 ) ) ) (=  false (=  (concat  (select  __arr32__image (_ bv23 32) ) (concat  (select  __arr32__image (_ bv22 32) ) (concat  (select  __arr32__image (_ bv21 32) ) (select  __arr32__image (_ bv20 32) ) ) ) ) ?B1 ) ) ) ) )
(check-sat)
(exit)
