tbl <- matrix(c(40,10,  30,20), nrow=2, byrow=TRUE,
              dimnames=list(Shift=c("Day","Night"), Defect=c("Yes","No")))
chisq.test(tbl)