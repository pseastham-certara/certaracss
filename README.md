# certaracss

## Using the library

To use certaracss, simply load the library within an R markdown chunk that includes the option `results='asis'`. 
This will print the certara logo at the top and also provide access to the following three texts:

- summary
- datainfo
- guidance

To use any of the above, simply use the following format within an R markdown script:

```
:::summary
Some text can be entered here, including
- bullet points
:::
```

You can use the test file `certaracss_test.Rmd` in this repository to test whether your package was installed correctly.

## Troubleshooting

If the package isn't working as expected, please first check that you are loading the library within a chunk that has `results='asis'`, e.g.

````
```{r results='asis'}
library(certaracss)
```
````

If you have done that and are still experiencing issues, please file an "issue" on this github page and we will try to address it.

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
