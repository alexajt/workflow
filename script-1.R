library(tidyverse)

result <- sum(1:10)
print(result)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 0.8) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "The value of a diamond",
    subtitle = "Price rises with carat, while cut adds another dimension",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 19),
    plot.subtitle = element_text(color = "gray35"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
