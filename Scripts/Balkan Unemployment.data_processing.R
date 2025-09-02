---
title: "Balkan Unemployment.rmd"
author: "Aleksandra Simovic"
date: "2025-09-02"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

Introduction

The unemployment rate is a long-standing key labour market indicator, widely used around the world to communicate on the performance of the labour market and the economy’s ability to generate enough jobs for jobseekers.

The unemployment rate is a valuable measure of the mismatches between the labour supply and demand, casting light on the unutilized labour supply.

Given the unemployment rate’s significant analytical value and its importance for assessing the labour market, it is one of the most extensively produced and used labour market indicators.

The unemployment rate is broadly used by numerous labour market agents, including politicians, policymakers, business owners, social partners, researchers, academics, students, journalists, and people in general interested in knowing about the labour market situation.

It can support labour market research and analysis, as well as the formulation and evaluation of labour market policies.

It is also used to communicate to the public on the labour market situation and trends.

The unemployment rate can also underpin labour market decisions of economic agents such as policymakers, businesses and individuals.

Both jobseekers and recruiters may adjust their criteria or expectations according to the variations of the unemployment rate, as these signal economic and labour market performance.

It is also a useful measure to track economic cycles, as trends in unemployment are often closely linked to economic performance and its variations. Unemployment patterns can reveal periods of recession and subsequent signs of recovery.

In this short essay, the graph and table represent data relevant for Balkan Countries in Year 2022, for which both information about Unemployment Rate in Total and Unemployment Rate for Male only has been determined and published on the World Bank Open Data website (https://data.worldbank.org/
).

Unemployment Data Table (2022)
unemployment_data <- data.frame(
  Country = c("Greece", "Kosovo", "Montenegro", "North Macedonia", "Serbia"),
  Total_Unemployment = c(12, 12, 15, 14, 8),
  Male_Unemployment = c(9, 11, 16, 16, 8)
)

kable(unemployment_data, caption = "Table 1. Unemployment Rate Total Vs Unemployment Rate Male in 2022 for Balkan Countries")


In the above table, the unemployment rate per country for year 2022 has been represented in percentage and sorted alphabetically, showing that in each country the majority of unemployed gender are women.

Unemployment Rates Graph
# Reshape data for plotting
unemployment_long <- pivot_longer(
  unemployment_data,
  cols = c("Total_Unemployment", "Male_Unemployment"),
  names_to = "Category",
  values_to = "Rate"
)

# Rename Category levels for better labels
unemployment_long$Category <- factor(unemployment_long$Category, 
                                    levels = c("Total_Unemployment", "Male_Unemployment"),
                                    labels = c("Total", "Male"))

# Plot bar chart
ggplot(unemployment_long, aes(x = Country, y = Rate, fill = Category)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.7)) +
  labs(
    title = "Unemployment Rates in Balkan Countries (2022)",
    x = "Country",
    y = "Unemployment Rate (%)",
    fill = "Category"
  ) +
  scale_fill_manual(values = c("steelblue", "darkorange")) +
  theme_minimal()


Presenting the same information in the graph, the majority of unemployed males are in Montenegro and North Macedonia. In the same chart, it is visible that male unemployment in Greece is quite lower compared to the total unemployment rate. Serbia keeps the lowest rate in the region, which can also be a sign that the majority of the population could be employed outside of the country, as certain analyses showed increased migration to EU countries in the last 3 years.

Conclusion

This analysis of unemployment rates in Balkan countries in 2022 highlights gender disparities in unemployment and reflects broader socio-economic patterns such as migration. Understanding these trends is essential for policymakers, businesses, and researchers focusing on labour market dynamics and economic development.



