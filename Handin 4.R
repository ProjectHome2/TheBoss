student = 1:8


Hand_ins_1 = c(8.9, 7.2, 7.1, 5.0, 4.5, 2.1, 0.9, 0.1)

Hand_ins_2 = c(5.1, 3.3, 3.5, 2.2, 1.7, 1.1, 0.9, 0.2)

data = cbind(student, Hand_ins_1, Hand_ins_2)

names(data) = c(student, Hand_ins_1, Hand_ins_2)

Hand_ins_hours = c(Hand_ins_1, Hand_ins_2)
Hand_ins_factor = as.factor(c(rep(1, times = 8), rep(2, times = 8)))
student_factor = as.factor(c(student, student))
data2 = cbind(Hand_ins_hours, Hand_ins_factor, student_factor)

fit = lm(Hand_ins_hours ~ -1 + Hand_ins_factor + student_factor)

fit_values = fitted(fit)

fit_residual = rstudent(fit)
plot(fit_values, fit_residual)

# opgave 2

