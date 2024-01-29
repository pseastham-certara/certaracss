# certaracss

## Using the library

To use certaracss, simply load the library within an R markdown chunk that includes the option `results='asis'`. 
This will print the certara logo at the top and also provide access to the following three texts:

- summary
- datainfo
- guidance

To use any of the above, simply use the following format within an R markdown script:

:::summary

Some text can be entered here, including
- bullet points

:::

## Install

To install (and verify that installation worked) run the code below in R.

```
library(devtools)
devtools::install_github("pseastham-certara/certaracss")
library(certaracss)
```

To uninstall, use the following:

```
remove.packages("certaracss")
```
