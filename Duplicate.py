# -*- coding: utf-8 -*-
"""
Created on Thu Apr 22 03:36:20 2021

@author: User
"""
import pandas as pd
import matplotlib.pyplot as plt 
import numpy as np
import seaborn as sns

OnlineRetail = pd.read_csv("F:/DataSets/OnlineRetail.csv")

##### Q1. For the given dataset perform the type casting (convert the datatypes, ex. float to int)

OnlineRetail.InvoiceNo  = OnlineRetail.InvoiceNo.astype('float64')
OnlineRetail.dtypes

OnlineRetail.Quantity   = OnlineRetail.Quantity.astype('float64')
OnlineRetail.dtypes

#### duplicate 

duplicate = OnlineRetail.duplicated()
duplicate
sum(duplicate)

#Removing Duplicates
OnlineRetail1 = OnlineRetail.drop_duplicates() 

##### Q3. Do the data analysis (EDA)? Such as histogram, boxplot, scatterplot etc

OnlineRetail.UnitPrice.mean() 
OnlineRetail.UnitPrice.median()
OnlineRetail.UnitPrice.mode()

OnlineRetail.UnitPrice.var() # variance
OnlineRetail.UnitPrice.std() #standard deviation

OnlineRetail.UnitPrice.skew()
OnlineRetail.UnitPrice.kurt()

plt.hist(OnlineRetail.UnitPrice) #histogram

plt.boxplot(OnlineRetail.UnitPrice) #boxplot


