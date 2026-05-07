# EV Analytics Project

This repository contains a small electric vehicle analytics workflow built on a public EV population dataset.

## Project overview

- `data/` contains the source dataset and cleaned output files.
- `python/` contains the data cleaning and SQLite loading notebook.
- `database/` contains the SQLite database file `ev_database.db`.
- `sql/` contains example queries for working with the cleaned EV data.
- `powerbi/` is reserved for the Power BI report file for data visualization.

> The Power BI report file is not yet added, but the `powerbi/` folder is already present so the README does not need to be updated later when the `.pbix` file is added.

## Data flow

1. The notebook `python/ev_data_cleaning.ipynb` loads raw EV data from `data/Electric_Vehicle_Population_Data.csv`.
2. It performs cleaning steps including:
   - converting `Model Year` values to numeric
   - removing duplicate rows
   - standardizing column names
   - removing numeric outliers using IQR filtering
   - handling missing values
3. It saves cleaned outputs to:
   - `data/ev_cleaned.csv`
   - `data/numeric_statistics.csv`
4. It writes the cleaned dataset into the SQLite database at `database/ev_database.db` in the table `ev_data`.

## Files and folders

- `README.md` - project documentation
- `requirements.txt` - Python dependencies for notebook execution
- `data/Electric_Vehicle_Population_Data.csv` - raw EV population dataset
- `data/ev_cleaned.csv` - cleaned dataset produced by the notebook
- `data/numeric_statistics.csv` - numeric summary statistics produced by the notebook
- `python/ev_data_cleaning.ipynb` - notebook used for cleaning and loading the data into SQLite
- `database/ev_database.db` - SQLite database containing the `ev_data` table
- `sql/ev_queries.sql` - example SQL queries against the EV database
- `powerbi/` - placeholder folder for the Power BI visualization report file

## How to use

1. Install dependencies:
   ```powershell
   pip install -r requirements.txt
   ```
2. Open and run `python/ev_data_cleaning.ipynb`.
3. Use the cleaned CSV files in `data/` or query the SQLite database in `database/ev_database.db`.
4. Add your Power BI report file to the `powerbi/` folder when ready.

## Notes

- The SQLite database file is already available in the `database/` folder.
