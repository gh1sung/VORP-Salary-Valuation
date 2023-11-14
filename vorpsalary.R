# Load the necessary libraries
library(ggplot2)

library(plotly)

library(readxl)

library(scales)

# Replace 'your_file_path' with the actual path to your Excel file
data <- read_excel("/Users/ryansung/vorp_salary2223.xlsx")


# Standardize the VORP and SALARY values
data$Standardized_VORP <- scale(data$VORP)
data$Standardized_SALARY <- scale(data$SALARY)

# Create a ggplot2 plot with custom point colors and formatted values
gg <- ggplot(data, aes(x = Standardized_VORP, y = Standardized_SALARY,
                       text = paste("VORP:", round(VORP, digits = 3), "\nSalary:", dollar_format()(SALARY), "\nPlayer:", First, Last))) +
  geom_point(aes(color = ifelse(Standardized_VORP > Standardized_SALARY, "Undervalued", "Overvalued")), size = 3, alpha = 0.8, show.legend = FALSE) +
  labs(title = "VORP vs. Salary", subtitle = "Player Salary Valuation") +
  xlab("Standardized VORP") +
  ylab("Standardized Salary") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold", family = "Courier New"),
        plot.subtitle = element_text(hjust = 0.5, size = 12, family = "Courier New"),
        axis.text = element_text(size = 12, family = "Courier New"),
        axis.title = element_text(size = 14, face = "bold", family = "Courier New"),
        legend.title = element_blank())  # Remove legend title

# Add a diagonal line (y = x) with standardized values
gg_with_line <- gg + geom_abline(intercept = 0, slope = 1, linetype = "dashed", color = "gray", linewidth = 1.5)

# Modify point colors manually
plotly_plot <- gg_with_line +
  scale_color_manual(
    values = c("Undervalued" = "skyblue1", "Overvalued" = "indianred1"),
    guide = guide_legend(override.aes = list(shape = c(16, 16)))  # Set legend shape for custom colors
  )

# Convert the ggplot2 plot with colored points and line to an interactive plot using plotly
plotly_plot <- ggplotly(plotly_plot, tooltip = "text")

# Display the interactive plot
plotly_plot


install.packages("htmlwidgets")
library(htmlwidgets)  # Load the htmlwidgets package

# Assuming 'plotly_plot' is your plotly interactive plot
saveWidget(plotly_plot, "vorpsalary_plot.html")



