# Load dataset
data <- read.csv("~/Downloads/career_change_prediction_dataset.csv")

# Convert categorical variables to factors (if necessary)
data$`Field of Study` <- as.factor(data$`Field of Study`)
data$Gender <- as.factor(data$Gender)
data$`Education Level` <- as.factor(data$`Education Level`)
data$`Industry Growth Rate` <- as.factor(data$`Industry Growth Rate`)
data$`Family Influence` <- as.factor(data$`Family Influence`)

# Fit a multiple linear regression model
model <- lm(`Likely to Change Occupation` ~ Age + `Years of Experience` + 
              `Job Satisfaction` + `Work-Life Balance` + `Job Opportunities` + 
              Salary + `Job Security` + `Career Change Interest` + `Skills Gap`, 
            data = data)

# View the summary of the model
summary(model)

