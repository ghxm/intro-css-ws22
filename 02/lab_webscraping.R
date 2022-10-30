
install.packages('rvest')
install.packages('tidyverse')


# only install if not installed
library('rvest')
library('tidyverse')



# @TODO example own page


page_list_mps <- rvest::read_html('https://www.ourcommons.ca/Members/en/search')

mp_names <- page_list_mps %>%
    html_elements("[class='ce-mip-mp-tile']") %>%
    html_element("[class='ce-mip-mp-name']") %>%
    html_text()

mp_parties <- page_list_mps %>%
    html_elements("[class='ce-mip-mp-tile']") %>%
    html_element("[class='ce-mip-mp-party']") %>%
    html_text()

mp_url <- page_list_mps %>%
    html_elements("[class='ce-mip-mp-tile']") %>%
    html_attr('href')

mps <- as.data.frame(cbind(mp_names, mp_parties, mp_url))

mps <- mps %>%
    mutate(mp_url_full = paste0('https://www.ourcommons.ca', mp_url))


# GET individual MEP DATA

# @TODO possibly sample bc of server load

mps <- mps %>%
    mutate(interventions = NA)

mp_urls <- mps %>%
    pull(mp_url_full)

for (url in mp_urls) {

    mp_interventions <- read_html(url) %>%
        html_element('#chamber-intervention-heading > div > p') %>%
        html_text()

    mps <- mps %>%
        mutate(interventions = replace(interventions, mp_url_full==url, mp_interventions))

}

# or

get_mp_attr

mps2 <- mps %>%
    sample_n(50) %>%
    mutate(interventions=sapply(mp_url_full, get_mp_attr))

# @TODO rename variables

write.csv(mps, 'mps.csv')


mps <- read.csv('mps.csv', as.is=TRUE)

mps <- mps %>%
    mutate(interventions_num = str_extract(interventions,'^[0-9]+'))

mps <- mps %>%
    mutate(interventions_num = as.integer(interventions_num))

# plot

mps %>%
    ggplot(aes(x = factor(mp_parties), y = interventions_num)) +
    geom_bar(stat = "summary", fun = "mean")


# @TODO color plot
