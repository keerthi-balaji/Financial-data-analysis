import pandas as pd
import sqlite3

# Load your CSV file
df = pd.read_csv(r'D:\Data Analysis\Financial Data Analysis\Preprocessing\financials_processed.csv')

# Connect to SQLite database (creates one if it doesn't exist)
conn = sqlite3.connect('financial_data.db')

# Write the DataFrame to a new SQL table
df.to_sql('financials', conn, if_exists='replace', index=False)

# Check success
print("Table created and data inserted successfully!")

# Close connection
conn.close()
