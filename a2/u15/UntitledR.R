set.seed(123)
x <- seq(0, 10, length.out = 100)
y <- 3 * sin(2 * pi * 0.5 * x + pi/4) + rnorm(100, sd = 0.5)

# Define the model formula to fit onto the dataset
model <- y ~ a * sin(2 * pi * f * x + phi) + d

# Initial parameter values to help the model fit onto the funtion
initial_params <- list(a = 2.5, f = 0.5, phi = pi/3, d = 0)

# Fit the model to the sinusiodal funtion using the nls()function
fit <- nls(model, data = data.frame(x = x, y = y), start = initial_params)

sf = summary(fit)
print(sf$coefficients[1])
