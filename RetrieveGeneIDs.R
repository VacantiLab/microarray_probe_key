biocLite("hgu133plus2.db")
library('hgu133plus2.db')
keytypes(hgu133plus2.db)
ids = c('65521_at','65493_at')

#get the gene symbols for the probe id
#    the last entry is what you have ('PROBEID' in this case), the prior entries are what you want
#    the first entry after the database is a list of what you want to map from (from probe ids to gene symbols here)
select(hgu133plus2.db,ids,'SYMBOL','PROBEID')


#Installation instructions for Bioconductor can be found at: https://www.bioconductor.org/install/
#the databases are packages that must be installed using the biocLite() function, not install.packages()
#the databases can be found at: http://bioconductor.org/packages/release/BiocViews.html#___PackageType
