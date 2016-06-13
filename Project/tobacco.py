import pandas as pd
rate = pd.read_csv('Rate.csv')
tobacco = rate[['StateCode','IndividualTobaccoRate']][rate['Tobacco']=='Tobacco User/Non-Tobacco User']
nontobacco = rate[['StateCode','IndividualRate']][rate['Tobacco']=='No Preference']
tRate = tobacco['IndividualTobaccoRate']
nRate = nontobacco['IndividualRate']
Q1 = tRate.quantile(0.25)
Q3 = tRate.quantile(0.75)
IQR = Q3-Q1
_tobacco = tobacco[(tRate<=Q3+IQR*1.5)&(tRate>=Q1-IQR*1.5)]
Q1 = nRate.quantile(0.25)
Q3 = nRate.quantile(0.75)
IQR = Q3-Q1
_nontobacco = nontobacco[(nRate<=Q3+IQR*1.5)&(nRate>=Q1-IQR*1.5)]
_tRate = _tobacco['IndividualTobaccoRate']
_nRate = _nontobacco['IndividualRate']
tgroup = _tobacco.groupby('StateCode')
ngroup = _nontobacco.groupby('StateCode')
tmedian = tgroup.median()
nmedian = ngroup.median()
tmedian.columns=['IndividualRate']
medif = tmedian-nmedian
medif.to_csv('medif.csv')



