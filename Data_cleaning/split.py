import pandas as pd

file_path = "Portugal.txt"
f = open(file_path, 'r')
data = f.readlines()
f.close()

print('num lines: %s' %(len(data)))

dataset = data[1:]
cleaned_data = []
for line in dataset:
	date = line.split(",")[0]
	line2 = line[len(date):]
	time = line2.split("-")[0][2:]
	line3 = line2[len(time):]
	name = line3.split(":")[0][4:]
	line4 = line3[len(name):]
	message = line4[6:-1]

	cleaned_data.append([date, time, name, message])

  
df = pd.DataFrame(cleaned_data, columns = ['Date', 'Time', 'Name', 'Message']) 

if 0:
	print(df.head())
	print(df.tail())

# Save it!
df.to_csv(r'converted_Portugal.csv', index=False)