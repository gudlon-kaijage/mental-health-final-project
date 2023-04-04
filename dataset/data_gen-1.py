import pandas as pd
import random

#Columns : Age, IQ

cols = []

#Heading = ['Age', 'IQ']

Age_col_data = []
IQ_col_data = []

for i in range (0, 50): #50 is how many data rows you want
    random_age = random.randint(10, 25)
    Age_col_data.append(random_age)

    random_IQ = random.randint (95, 140)
    IQ_col_data.append(random_IQ)
    print (i)

Age_df = pd.DataFrame ({'Age': Age_col_data})
IQ_df = pd.DataFrame ({'IQ': IQ_col_data})


#Concatenate the dataframes
csv_df = pd.concat([Age_df, IQ_df], axis=1)


#Export the data to csv file
csv_df.to_csv ('generated_data.csv', encoding = 'utf-8', index=False)