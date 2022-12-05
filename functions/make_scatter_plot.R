make_scatter_plot <- function(penguins_now_clean){
  penguins_now_clean %>% 
    ggplot(aes(x = body_mass_g, y = flipper_length_mm)) +
    geom_point(aes(color = species), width = 0.7, show.legend = TRUE) +
    scale_color_manual(values = c("darkgreen","green","cyan4")) +
    labs(x = "Body Mass",
         y = "Flipper Length") +
    xlim(1000,7000) +
    ylim(100,300)
}