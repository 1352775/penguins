plot_flipper_vs_body_mass_figure <- function(penguins_flipper_vs_body_mass){
  penguins_flipper_vs_body_mass %>% 
    ggplot(aes(x = body_mass_g, y = flipper_length_mm)) +
    geom_point(aes(color = species), width = 0.3, show.legend = TRUE) +
    scale_color_manual('Penguin Species', values = c("#E69F00","#56B4E9","#009E73")) +
    geom_smooth(method = "lm", col = "#000000") +
    labs(x = "Body mass (g)", y = "Flipper length (mm)") +
    ggtitle("Relationship between Body Mass and Flipper Length") +
    theme_bw()
}