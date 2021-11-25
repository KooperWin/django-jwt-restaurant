from django.test import TestCase
from .models import *

class RestaurantModelTests(TestCase):
	def test_ristorante_name(self):
		new_restaurant = Restaurant(name='My Restaurant')
		print(new_restaurant)
		self.assertIs(str(new_restaurant), 'My Restaurant')
