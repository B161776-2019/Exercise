#!/usr/bin/python3
import re
accessions = [
  'xkn59438', 
  'yhdck2', 
  'eihd39d9', 
  'chdsye847', 
  'hedle3455', 
  'xjhd53e', 
  '45da', 
  'de37dp']

outputs = []
for acc in accessions:
  if re.search(r'5', acc):
    outputs.append('contain the number 5: ' + acc)
  if re.search(r'[de]', acc): 
    outputs.append('contain the letter d or e: ' + acc)
  if re.search(r'de', acc): 
    outputs.append('contain the letter d and e (have to be adjacent): ' + acc)
  if re.search(r'd.*e', acc): 
    outputs.append('contain the letter d and e in that order (dont have to be adjacent): ' + acc)
  if re.search(r'd.e', acc): 
    outputs.append('contain the letter d and e in that order with a single letter between them: ' + acc)
  if re.search(r'd', acc) and re.search(r'e', acc) : 
    outputs.append('contain both the letters d and e in any order: ' + acc)
  if re.search(r'(^x|^y)', acc): 
    outputs.append('start with x or y: ' + acc)
  if re.search(r'(^x|^y)', acc) and re.search(r'(e$)', acc): 
    outputs.append('start with x or y and end with e: ' + acc)
  if re.search(r'[0123456789]{3,}', acc): 
    outputs.append('contain three or more numbers in a row: ' + acc)
  if re.search(r'd[arp]$', acc): 
    outputs.append('end with d followed by either a, r or p: ' + acc)
outputs.sort()
print(('\n').join(outputs))
dictstuff = {}
dictstuff['contain the letter d or e'] = '45da'
dictstuff['contain the letter d or e'] = dictstuff['contain the letter d or e']+', chdsye847'
dictstuff
list(dictstuff.values())
list(dictstuff.values())[0].split(',')
list(dictstuff.items())                                   