company.data <- data.frame(
  company_id = c (1:5),
  company_name = c("Facebook", "Amazon", "Apple", "Netflix", "Google"),
  company_capital = c(523.3, 615.2, 911.0, 329.0, 843.25),
  company_start_date = as.Date(
    c(
      "2004-02-04",
      "1994-09-23",
      "1980-11-15",
      "1998-05-11",
      "1997-03-27"
    )
  ),
  stringsAsFactors = TRUE
)
print(company.data)

str(company.data)



company_details <-
  data.frame(Name = company.data$company_name,
             Capital = company.data$company_capital)
print(company_details)

company.data[c(2,4),c(2,3)]

new.company.data <- data.frame(
  company_id = c ('a','b','c','d','e'),
  company_name = c("Facebook", "Amazon", "Apple", "Netflix", "Google"),
  company_capital = c(523.3, 615.2, 911.0, 329.0, 843.25),
  company_start_date = as.Date(
    c(
      "2004-02-04",
      "1994-09-23",
      "1980-11-15",
      "1998-05-11",
      "1997-03-27"
    )
  ),
  stringsAsFactors = TRUE
)

rbind(company.data, new.company.data)


