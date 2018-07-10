
library(ggplot2)

df <- read.csv('data/intake.csv')

ggplot(data = df, aes(x = day, y = ounces, fill = phase)) +
  geom_bar(stat = 'identity', width = 1, color = "black", size = 0.1) +
  coord_polar() +
  scale_fill_manual(values = c('#CC9966', '#996633', '#663300'))+
  xlab("") + ylab("") +
  labs(fill="") + 
  guides(fill = guide_legend(reverse=TRUE)) +
  theme(
    legend.position="top", 
    legend.direction="horizontal",
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.title.x=element_blank(),
    axis.text.x=element_blank(),
    axis.ticks.x=element_blank(),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank()
  ) 
