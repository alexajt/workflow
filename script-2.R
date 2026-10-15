library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(trim = FALSE, alpha = 0.85, color = "white") +
  geom_boxplot(width = 0.12, fill = "white", alpha = 0.8, outlier.shape = NA) +
  scale_fill_viridis_d(option = "C", end = 0.9) +
  scale_y_log10(labels = scales::label_dollar()) +
  labs(
    title = "How diamond prices vary by cut",
    subtitle = "Violin shapes show the price distributions; boxes mark the middle half",
    x = "Cut quality",
    y = "Price (USD, log scale)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 19),
    plot.subtitle = element_text(color = "gray35"),
    legend.position = "none",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
