#Exercise 1
name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
gender <- c("Female", "Male", "Female", "Male", "Female")
age <- c(22, 23, 21, 24, 22)
test_score <- c(85, 78, 92, 65, 88)
attendance <- c(90, 85, 95, 70, 88)
students <- data.frame(name, gender, age, test_score, attendance)
print(students)

#Exercise 2
#print test_score column with [] and $
TS1 <- students["test_score"]
print(TS1)
TS2 <- students$test_score
print(TS2)

#display the first 3 rows
students[1:3,]
#display older than 22
students[students$age>22]
#display female and test score higher than 80
students[students$gender=="Female" & students$test_score>80]

#Exercise 3
new_students <- rbind(students,data.frame(name = "Lina",
                                         gender = "Male",
                                         age = 20,
                                         test_score = 95,
                                         attendance = 92))
print(new_students)

#Exercise 4
#Find NA
students_na <- data.frame(
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)
print(students_na)
is.na(students_na)

#Replace NA in Age with mean
students_na$Age[is.na(students_na$Age)] <- mean(na.omit(students_na$Age))
#Replace NA in Test_Score with median
students_na$Test_Score[is.na(students_na$Test_Score)] <- median(na.omit(students_na$Test_Score))
#Replace NA in Attendance with 0
students_na$Attendance[is.na(students_na$Attendance)] <- 0
print(students_na)