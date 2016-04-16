if __name__=='__main__':
  f=open('Q3_2008.pig','r')
  fin=open('Q3.pig','w')
  code_2008=f.read()
  code = code_2008
  for intyear in range(1987,2008):
    year = str(intyear)
    code=code+code_2008.replace("2008",year)
  fin.write(code)
  f.close
  fin.close
