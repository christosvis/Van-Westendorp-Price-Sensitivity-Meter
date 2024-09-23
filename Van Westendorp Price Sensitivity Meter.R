## creating example data

tch <- round(rnorm(n = 250, mean = 8.5, sd = 1), digits = 2)
ch <- round(rnorm(n = 250, mean = 10, sd = 1), digits = 2)
ex <- round(rnorm(n = 250, mean = 12, sd = 0.75), digits = 2)
tex <- round(rnorm(n = 250, mean = 13, sd = 1), digits = 2)

data_psm_demo <- data.frame(tch, ch, ex, tex)

library(pricesensitivitymeter)

## running the analysis
output_psm_demo <- psm_analysis(
  toocheap = "tch",
  cheap = "ch",
  expensive = "ex",
  tooexpensive = "tex",
  data = data_psm_demo
)

summary(output_psm_demo)


library(ggplot2)

psm_plot(output_psm_demo) +
  labs(
    x = "Price",
    y = "Share of Respondents (0-1)",
    title = "Example Price Sensitivity Meter Plot",
    caption = "Shaded area: range of acceptable prices") + 
  theme_minimal()

