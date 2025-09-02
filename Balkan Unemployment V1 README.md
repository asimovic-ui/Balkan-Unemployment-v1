# Balkan Unemployment Analysis

This project analyzes unemployment trends in the Balkan region using R.

Setup and Environment
To ensure reproducibility, this project uses renv to manage R package dependencies.

How to set up:
Clone the repository:

git clone https://github.com/asimovic-ui/Balkan-Unemployment-v1.git
cd Balkan-Unemployment-v1


Open the project in RStudio by opening the .Rproj file.

Install renv if you don't have it:

install.packages("renv")

Restore the exact package versions used in this project:

renv::restore()

How to Run the Analysis

Run the scripts located in the /scripts folder in the following order:

Data processing: BalkanUnemployment.data_processing.R

Report: Knit the Balkan Unemployment v1.Rmd file

Data Sources

Data used in this project is sourced from (https://data.worldbank.org/).

License

This project is licensed under the MIT License — see the LICENSE file for details.

Contact

For questions or contributions, please contact:

Aleksandra Simovic (aleksandra.simovic@hotmail.com)

GitHub: https://github.com/asimovic-ui
