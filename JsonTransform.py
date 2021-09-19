import json
import random

from main import *
import names
name = ['Роман', 'Коля']

Clients = [Client(f"+{random.randint(99999999999, 100000000000)}", name[random.randint(0, 1)]) for i in range(4)]
cars = [['KIA K5', 'A111AA116'],
        ['Toyota Camry', 'B222BB116'],
        ['Hyundai Accent', 'C333CC116'],
        ['Porsche Cayenne', 'E444EE116']]

Cars = [Car(cars[x][0], cars[x][1]) for x in range(0, 4)]
Drivers = [Driver(f"+{random.randint(99999999999, 100000000000)}", names.get_full_name(), Cars[i]) for i in range(0, 4)]
Trips = [Trip("2021", Clients[i], Cars[i]) for i in range(0, 4)]
db = {}
db['Clients'] = []
db['Cars'] = []
db['Drivers'] = []
db['Trips'] = []
for i in Clients:
    db['Clients'].append(i.__dict__)

for i in Cars:
    db['Cars'].append(i.__dict__)

for i in Drivers:
    a = i.__dict__
    a['car'] = a['car'].__dict__
    db['Drivers'].append(a)

for i in Trips:
    a = i.__dict__
    a['client'] = a['client'].__dict__
    a['driver'] = a['driver'].__dict__
    db['Trips'].append(a)

data = {'db': db}
with open('./data.json', 'w', encoding='utf8') as f:
    json.dump(data, f)

with open('./data.json', 'r') as file:
    data = json.load(file)
nameClient = input()
TripDat = input()

for dat in data['db']['Trips']:
    if dat['date'] == TripDat and dat['client']['name'] == nameClient:
        print(dat)
