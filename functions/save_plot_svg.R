save_plot_svg <- function(penguins_flipper_vs_body_mass, 
                          filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  penguins_flipper_vs_body_mass <- plot_flipper_vs_body_mass_figure(penguins_flipper_vs_body_mass)
  print(penguins_flipper_vs_body_mass)
  dev.off()
}