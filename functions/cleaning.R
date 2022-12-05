cleaning <- function(data_raw){
  data_raw %>%
    clean_names() %>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("delta")) %>%
    select(-comments) %>%
  rename(bill_length_mm = culmen_length_mm, bill_depth_mm = culmen_depth_mm)
}