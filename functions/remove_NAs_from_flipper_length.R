remove_NAs_from_flipper_length <- function(data_clean){
  data_clean %>%
    filter(!is.na(flipper_length_mm)) %>%
    select(species, flipper_length_mm, body_mass_g)
}
