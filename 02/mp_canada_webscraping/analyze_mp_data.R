# read in data
mps <- read.csv('./02/mp_canada_webscraping/mps.csv', as.is = TRUE)


# extract numbers
mps <- mps %>%
    mutate(interventions_num = str_extract(interventions,'^[0-9]+'))

mps <- mps %>%
    mutate(interventions_com_num = str_extract(interventions_com,'^[0-9]+'))

# convert number strings to numeric values
mps <- mps %>%
    mutate(interventions_num = as.numeric(interventions_num))

mps <- mps %>%
    mutate(interventions_com_num = as.numeric(interventions_com_num))


# avg. n of interventions by party
mps %>%
    group_by(mp_parties) %>%
    summarise(mean(interventions_num))


# replace NA with 0
mps <- mps %>%
    replace_na(list(interventions_num = 0))

mps <- mps %>%
    replace_na(list(interventions_com_num = 0))


# mean interventions by party
mps %>%
    group_by(mp_parties) %>%
    summarise(mean(interventions_num))



# bar plot avg. by party
mps %>%
    ggplot(aes(x = mp_parties, y = interventions_num)) +
    geom_bar(stat = "summary", fun = "mean") +
    xlab('Party') +
    ylab('Avg. interventions')


mps %>%
    ggplot(aes(x = mp_parties, y = interventions_com_num)) +
    geom_bar(stat = "summary", fun = "mean") +
    xlab('Party') +
    ylab('Avg. com. interventions')



# absolute numbers of interventions by party
mps %>%
    ggplot(aes(x = mp_parties, y = interventions_com_num)) +
    geom_bar(stat= 'summary', fun='sum') +
    xlab('Party') +
    ylab('# interventions')


mps %>%
    ggplot(aes(x = mp_parties, y = interventions_num)) +
    geom_bar(stat= 'summary', fun='sum') +
    xlab('Party') +
    ylab('# com. interventions')


# check number of party members
mps %>%
    group_by(mp_parties) %>%
    count()


# point plot of interventions by party
mps %>%
    ggplot(aes(x=mp_parties, y=interventions_num)) +
    geom_point()


# look at top 5 interventioneers
mps %>%
    select(mp_names, mp_parties, interventions_num, interventions_com_num) %>%
    arrange(desc(interventions_num)) %>%
    group_by(mp_parties) %>%
    slice(1:5) %>%
    View()


# save the point plot from above to a png file
mps %>%
    ggplot(aes(x=mp_parties, y=interventions_num)) +
    geom_point()
ggsave('intervention_point.png')
