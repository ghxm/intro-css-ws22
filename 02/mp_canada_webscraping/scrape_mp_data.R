# install packages if not installed
if(!require(tidyverse)){
    install.packages('tidyverse')
}


if(!require(rvest)){
    install.packages('rvest')
}

# load packages
library(tidyverse)
library(rvest)


# read in mp list
page_list_mps <- rvest::read_html('https://www.ourcommons.ca/Members/en/search')


# get names
mp_names <- page_list_mps %>%
    html_elements("[class='ce-mip-mp-tile']") %>%
    html_element("[class='ce-mip-mp-name']") %>%
    html_text()

# get parties
mp_parties <- page_list_mps %>%
    html_elements("[class='ce-mip-mp-tile']") %>%
    html_element("[class='ce-mip-mp-party']") %>%
    html_text()

# get urls
mp_url <- page_list_mps %>%
    html_elements("[class='ce-mip-mp-tile']") %>%
    html_attr('href')


# combine into df
mps <- as.data.frame(cbind(mp_names, mp_parties, mp_url))


# add domain to urls
mps <- mps %>%
    mutate(mp_url_full = paste0('https://www.ourcommons.ca', mp_url))

# prepare df
mps <- mps %>%
    mutate(interventions = NA, interventions_com = NA)

head(mps$mp_url_full)

count <- 0

# iterate over MP urls
for (url in mps$mp_url_full) {

    count <- count + 1

    # make loop more informative by printing the current url
    print(paste0(count, '/', NROW(mps)))
    print(url)

    # extract the chamber intervention information
    mp_interventions <- read_html(url) %>%
        html_element('#chamber-intervention-heading > div > p') %>%
        html_text()

    # extract the committee intervention information
    mp_interventions_com <- read_html(url) %>%
        html_element('#committee-intervention-heading > div > p') %>%
        html_text()

    # add it to the dataframe
    mps <- mps %>%
        mutate(interventions = replace(interventions, mp_url_full==url, mp_interventions)) %>% # replace the NA value in the interventions variable in the df at the the row where urls match
        mutate(interventions_com = replace(interventions_com, mp_url_full==url, mp_interventions_com)) # replace NA for interventions_com_variable

}

write.csv(mps, './02/mp_canada_webscraping/mps.csv')

mps <- read.csv('mps.csv', as.is = TRUE)
