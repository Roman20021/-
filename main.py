class Client:
    def __init__(self, phone, name):
        self.phone = phone
        self.name = name


class Car:
    def __init__(self, model, number):
        self.model = model
        self.number = number


class Driver:
    def __init__(self, phone, name, car):
        self.phone = phone
        self.name = name
        self.car = car


class Trip:
    def __init__(self, date, client, driver):
        self.date = date
        self.client = client
        self.driver = driver
