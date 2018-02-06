test <- subset(worker, subset = Number_of_advertisments_posted == "")
nrow(worker)-nrow(test)
nrow(subset(worker, subset = User_ID != ""))

